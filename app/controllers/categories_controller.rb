class CategoriesController < ApplicationController
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



end
