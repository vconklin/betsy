class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_create_params[:user])
    if @new_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def product
    @user = User.find(params[:id])
    @products_by_user = Product.where(user_id: @user.id)

    unless session[:user_id] == @products_by_user[0].user_id
      flash[:notice] = "You don't have access to that product list!"
      redirect_to root_path
      return
    end

  end

  private

  def user_create_params
    params.permit(user: [:username, :email, :password, :password_confirmation])
  end

  def require_login
    if current_user.nil?
      flash[:error] = "You must be logged in to view this section"
      redirect_to login_path
    end
  end

end
