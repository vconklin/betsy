class OrdersController < ApplicationController
# fullfillment page for the merchant/seller
  def index
    @orders = Order.where(id: params[:order_id]).order(name:)
    ??????
  end

  # confirmation page
  def show
    @order = Order.find(session[:order_id])
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
    order.completed_time = Time.now
    order.completion_status = "paid"
    reduce_inventory(order)
    if order.save
      redirect_to order_path
    else
      render :edit
    end
  end

  def confirmation
    @order = Order.find(session[:order_id])
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

  def find_order
    @order = Order.find(session[:order_id])
  end

private

  def order_param
    params.permit(order: [:card_name, :email, :address, :credit_card, :exp_date, :cvv, :zip])
  end
end
