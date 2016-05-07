class OrdersController < ApplicationController
  # confirmation page
  def show
    @order = Order.find(session[:order_id])
  end

  def purchase
  # show the form for "this" order
    @order = Order.find(session[:order_id])
  end

  def new
    @order = Order.new
  end

  def complete_purchase
    order = Order.find(session[:order_id])
    order.completed_time = Time.now
    order.completion_status = "paid"
    reduce_inventory(order)
    if order.save
      redirect_to products_path
    else
      render :new
    end
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
