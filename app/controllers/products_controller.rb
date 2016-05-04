class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def by_category
    @products = Product.where(category: params[:category])
    redirect_to root_path
  end

  def show
    @product = Product.find(params[:id])
    if @product.reviews.present?
      @overall_rating = @product.reviews.average(:rating).truncate(2).to_s
    end
  end
end
