class ProductsController < ApplicationController
skip_before_action :require_login, except: [:index]

  def require_login
    if current_user.nil?
      flash[:error] = "You must be logged in to view this section"
      redirect_to login_path
    end
  end

  def index
    @products = Product.where(status: "active")
    @user ||= User.find_by(id: session[:user_id])
  end

  def by_category
    @products = Product.where(category: params[:category], status: "active")
    redirect_to root_path
  end

  def show
    @product = Product.find(params[:id])
    if @product.reviews.present?
      @overall_rating = @product.reviews.average(:rating).truncate(2).to_s
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.update(params[:id], product_access_params[:product])
    @user ||= User.find_by(id: session[:user_id])

    if @product.save
      redirect_to "/users/#{@user.id}/products"
    else
      render :edit
    end
  end

  private

  def product_access_params
    params.permit(product: [:name, :description, :stock, :price, :category, :status])
  end
end
