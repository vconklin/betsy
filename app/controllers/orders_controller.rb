class OrdersController < ApplicationController
  # confirmation page
  def show
    @order = Order.find(session[:order_id])
  end

  def purchase
  # show the form for "this" order
    @order = Order.find(session[:order_id])
  end

  def new
    @order = Order.new
  end

  def complete_purchase
    order = Order.find(session[:order_id])
    order.completed_time = Time.now
    order.completion_status = "paid"
    reduce_inventory(order)
    if order.save
      redirect_to products_path
    else
      render :new
    end
  end

  def reduce_inventory(order)
  # check that there is enough inventory here
  # add check for inventory and return error if no inventory
    items = order.order_items
    items.each do |item|
    product = item.product
    quantity = item.quantity
    # if product.stock is not greater then zero, deal with error
    # note from Val: "out of stock" is already handled by the fact that there is no Add To Cart link on the page of a product that's out of stock
      if product.stock < 0
        flash[:error] = "Out of Stock"
        redirect_to product_path(params[:product_id])
      else
        product.stock = product.stock - quantity
      end
    end
  end

  def find_order
    @order = Order.find(session[:order_id])
  end

# commenting this out in case until Val and Risha can talk about it, there doesn't seem to be any use for this method, as the order is already created in sessions#create_order, and it looks like it might cause a conflict if it gets called.
  # def create
  #   @order.cart_id = (session[:cart_id])
  #     if @order.save
  #       redirect_to products_path
  #     else
  #       render :new
  #     end
  # end

  private

  def order_param
    params.permit(order: [:card_name, :email, :address, :credit_card, :exp_date, :cvv, :zip])
  end

  # what is this method doing and why is it private?
  def index
    @order = Order.find(session[:order_id])
  end

end
