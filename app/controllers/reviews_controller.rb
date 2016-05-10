class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_create_params[:review])
      if(@review.save) && user_check.nil?
        redirect_to product_path(params[:product_id])
      else
        render :add
      end
  end

  private
    def review_create_params
      params.permit(review: [:name, :rating, :text, :product_id])
    end

    def user_check
      if @review.product.user_id == current_user.id
      flash[:error] = "You cannot review your own products."
    end
  end
end
