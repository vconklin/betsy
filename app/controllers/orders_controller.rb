class OrdersController < ApplicationController
  # confirmation page
  def show
    @order = Order.find(session[:order_id])
  end

  def purchase
  # show the form for "this" order
    @order = Order.find(session[:order_id])
  end

  # Purchasing an order makes the following changes:
  # Clears the current cart

  def complete_purchase
    order = Order.find(session[:order_id])
    order.completed_time = Time.now
    order.completion_status = "paid"
    reduce_inventory(order)
    if order.save
    redirect_to root_path
    else
      render :new
    end
  end

  def reduce_inventory(order)
  # check that there is enough inventory here
  # add check for inventory and return error if no inventory
    if product.stock < 0
      flash[:error] = "Out of Stock"
      redirect_to produc_path(params[:product_id])
    end
    items = order.order_items
    items.each do |item|
    product = item.product
    quantity = item.quantity
    # if product.stock is not greater then zero, deal with error
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

  def create
    @order.cart_id = (session[:cart_id])
      if @order.save
        redirect_to prodcuts_path
      else
        render :new
      end
  end

  private

  def order_param
    params.permit(order: [:card_name, :email, :address, :credit_card, :exp_date, :cvv, :zip])
  end
end
