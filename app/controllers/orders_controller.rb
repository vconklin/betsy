class OrdersController < ApplicationController
  # confirmation page
  def show
    @order = Order.find(session[:order_id])
  end

  def purchase
  # show the form for "this" order
    @order = Order.find(session[:order_id])
  end

  # Purchasing an order makes the following changes:
  # Reduces the number of inventory for each product
  # Changes the order state from "pending" to “paid” : 0 == not paid, 1 == paid
  # Clears the current cart
  def complete_purchase
    time = Time.now
    order = Order.find(params[:id])
    order.completed_purchase = time
    order.completion_purchase = "paid"
      if order.save
      #  flash[:notice] = "Task completed"
       redirect_to root_path
      else
       render :new
      end
  end
  def create
    @order.cart_id = (session[:cart_id])
      if @order.save
        redirect_to prodcuts_path
      else
        render :new
      end
  end

  private

  def order_param
    params.permit(order: [:card_name, :email, :address, :credit_card, :exp_date, :cvv, :zip])
  end

end
