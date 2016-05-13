class OrdersController < ApplicationController

  # fullfillment page for the merchant/seller
  # .select{ |order| order.status == 'paid' }
    def index
      p params
      #filter completion status if the user asks for it
      if params[:completion_status] != nil
        @orders = Order.where(completion_status: params[:completion_status])
        p @orders
        @products = Product.where(user_id: params[:id])
        p @products
        @order_items = OrderItem.where(product: @products, order: @orders)
          p @order_items
      else
        @products = Product.where(user_id: params[:id])
        @order_items = OrderItem.where(product: @products)
      end
      @user = User.find(params[:id])
      @status = ["pending", "paid", "complete", "cancelled"]
    end

  # confirmation page
  def show
    if params[:view] == 'merchant'
      @order = Order.find(params[:id])
      render :usershow
    else
      @order = Order.find(session[:order_id])
    end
  end

  def edit
  # show the form for "this" order
    @order = Order.find(session[:order_id])
  end

  def new
    @order = Order.new
  end

  def update
    order = Order.find(session[:order_id]) #session is persistent, the cookie has the session information.
    order.update(order_param[:order]) # when you get a request, here is my information for right now.
    reduce_inventory(order)
    if order.save
      redirect_to order_path
    else
      render :edit
    end
  end

  def confirmation
    @order = Order.find(session[:order_id])
    @order.completed_time = Time.now
    @order.completion_status = "paid"
  end

  def reduce_inventory(order)
  # check that there is enough inventory here
  # add check for inventory and return error if no inventory
    items = order.order_items
    items.each do |item|
    product = item.product
    quantity = item.quantity
    product.stock = product.stock - quantity
    end
  end

  def complete
    @order = Order.find(params[:order])
    @order.update(completion_status: "complete")
    @order.save
    redirect_to "/users/#{session[:user_id]}/orders"
  end

  def find_order
    @order = Order.find(session[:order_id])
  end

  def cancel
      @cancelledorder = Order.find(params[:id])
      @cancelledorder.update(completion_status: "cancelled")
      @cancelledorder.save
    redirect_to root_path
  end

private

  def order_param
    params.permit(order: [:card_name, :email, :address, :credit_card, :exp_date, :cvv, :zip])
  end
end
