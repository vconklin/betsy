class OrdersController < ApplicationController

  # wait, what are we using this for? we don't need a list of all orders, do we?
  def index
    @order = Order.find(session[:order_id])
  end

end
