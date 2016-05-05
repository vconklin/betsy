class SessionsController < ApplicationController
  def create_order
    @order = Order.create
    session[:order_id] = @order.id
    redirect_to products_path
  end
end
