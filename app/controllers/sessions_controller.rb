class SessionsController < ApplicationController

  def create
    user = User.log_in(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def create_order
    @order = Order.create
    session[:order_id] = order.id
    redirect_to products_path
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
