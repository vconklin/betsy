class OrdersController < ApplicationController
  def index
    @cart  = Cart.find(params[:id])
    @orders = @cart.orders
    @total =

  end
end
