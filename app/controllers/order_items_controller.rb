class OrderItemsController < ApplicationController

  # this is the cart page
  def index
    @order = Order.find(session[:order_id])
    @order_items = OrderItem.where(order_id: session[:order_id])
  end

  def create
    # gets the product passed in from the link_to on the products/show page.. how?!
    @order_item = OrderItem.new(order_id: session[:order_id], quantity: 1, product_id: params[:product_id])
    if @order_item.save
      redirect_to cart_path
    else
      redirect_to products_path
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    redirect_to cart_path
  end

end
