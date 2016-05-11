class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_create_params[:review])
      if current_user == nil
        @review.save
        redirect_to product_path(params[:product_id])
      elsif same_user_check == false
        @review.save
        redirect_to product_path(params[:product_id])
      else
        flash[:error] = "Sorry - you cannot review your own product."
        redirect_to product_path(params[:product_id])
      end
  end

  private
    def review_create_params
      params.permit(review: [:name, :rating, :text, :product_id])
    end

    def same_user_check
       @review.product.user_id == current_user.id
    end
end
