class CategoriesController < ApplicationController
  before_action :require_login

  def index
    @categories = Category.all
  end


  def new
    @category = Category.new
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.where(products: product_id)
  end


  def create
    @category = Category.new(category_access_params[:category])
    #any validation?
    if @category.save
      redirect_to new_category_path
    else
      render :new
    end
  end

private

  def category_access_params
    params.permit(category: [:name])
  end

  def require_login
    if current_user.nil?
      flash[:error] = "You must be logged in to view this section"
      redirect_to login_path
    end
  end


end
