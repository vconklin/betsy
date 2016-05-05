class OrdersController < ApplicationController

  # wait, what are we using this for? we don't need a list of all orders, do we?
  def index
    @order = Order.find(session[:order_id])
  end

  # def show_cart
  #   @order = Order.find(session[:order_id])
  #   @order_items = OrderItem.all.where(order_id: session[:order_id])
  #   render :cart
  # end

end
