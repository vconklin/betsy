class SessionsController < ApplicationController

  def new
  end

  def create
    @cart = Cart.create
    session[:cart_id] = cart.id
    redirect_to products_path
  end

end
