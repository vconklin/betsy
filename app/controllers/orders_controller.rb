require "#{Rails.root}/lib/shippingwrapper.rb"
require 'geokit'

class OrdersController < ApplicationController

  # fullfillment page for the merchant/seller
  # .select{ |order| order.status == "paid" }
    ORIGIN = {
      country: "US",
      state: "WA",
      city: "Seattle",
      zip: "98161"
    }

    def index
      p params
      #filter completion status if the user asks for it
      if params[:completion_status] != nil
        @orders = Order.where(completion_status: params[:completion_status])
        p @orders
        @products = Product.where(user_id: params[:id])
        p @products
        @order_items = OrderItem.where(product: @products, order: @orders)
        p @order_items
      else
        @products = Product.where(user_id: params[:id])
        @order_items = OrderItem.where(product: @products)
      end
      @user = User.find(params[:id])
      @status = ["pending", "paid", "complete", "cancelled"]

      unless session[:user_id].to_s == params[:id]
        flash[:notice] = "You don't have access to that order fulfillment page!"
        redirect_to products_path
        return
      end
    end

  # confirmation page
  def show
    if params[:view] == "merchant"
      @order = Order.find(params[:id])
      render :usershow
    else
      @order = Order.find(session[:order_id])
      @products_info = @order.order_items.map do |item|
        product = item.product
        {
        weight_lbs:  product.weight_lbs,
        length_in: product.length_in,
        height_in: product.height_in,
        width_in: product.width_in,
        units: product.units,
        quantity: item.quantity,
        item_id: item.id
        }
      end

      @place = {
        country: "US",
        state: @order.state,
        city: @order.city,
        zip: @order.zip
      }

      @response = ShippingWrapper.response(@products_info, @place, ORIGIN)
      # if @response.code == "500"
      #   render :edit
      # else
      #   @response
      # end
    end
  end

  def edit
  # show the form for "this" order
    @order = Order.find(session[:order_id])
  end

  def new
    @order = Order.new
  end

  def update
    @order = Order.find(session[:order_id]) #session is persistent, the cookie has the session information.
    @order.update(order_param[:order]) # when you get a request, here is my information for right now.
    reduce_inventory(@order)

    if @order.save
      redirect_to order_path
    else
      render :edit
    end
  end

  def confirmation

    @order = Order.find(params[:id])
    @order.update(completed_time: Time.now, completion_status: "paid")
    @order.save
    # @order_items = OrderItem.where(order_id: session[:order_id])
    # session[:order_id] += 1
    # destroy all cart items
    # raise
  end

  def reduce_inventory(order)
  # this happens when user confirms payment method on order
  # check that there is enough inventory here
  # add check for inventory and return error if no inventory
    items = order.order_items #items in the cart
    items.each do |item| #for each item do
      find = Product.find(item.product_id)
      product = item.product
      quantity = item.quantity
      find.stock = product.stock - quantity
      find.save
    end
  end

  def complete
    @order = Order.find(params[:order])
    @order.update(completion_status: "complete")
    @order.save
    redirect_to "/users/#{session[:user_id]}/orders"
  end

  def find_order
    @order = Order.find(session[:order_id])
  end

  def cancel
      @cancelledorder = Order.find(params[:id])
      @cancelledorder.update(completion_status: "cancelled")
      @cancelledorder.save
    redirect_to root_path
  end

private

  def order_param
    params.permit(order: [:card_name, :email, :address, :credit_card, :exp_date, :cvv, :zip])
  end
end
