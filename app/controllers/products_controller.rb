class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def by_category
    @products = Product.where(category: params[:category])
    redirect_to root_path
  end
end
