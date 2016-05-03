class OrdersController < ApplicationController
  def index
    @cart = Cart.find(params[:id])
    @orders = Order.new
  end
end
