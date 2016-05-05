class OrderItemsController < ApplicationController

  # this is the cart page
  def index
    @order = Order.find(session[:order_id])
    @order_items = OrderItem.all.where(order_id: session[:order_id])
  end

  def create
    # gets the product passed in from the link_to on the products/show page.. how?!
    @order_item = OrderItem.create(order_id: session[:order_id], product_id: params[:product_id])
    redirect_to cart_path
  end

end
