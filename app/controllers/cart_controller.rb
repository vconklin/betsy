class CartController < ApplicationController

  def show
    @your_cart = Cart.find(session[:cart_id])
    render :cart
  end
end
