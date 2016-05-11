require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase

  def setup
    @product = products(:passing_product)
    @review = reviews(:annas_review)
  end

  test "should get new" do
    get :new, product_id: @product.id
    assert_response :success
  end

  test "should post create" do
    assert_difference('Review.count') do
      post :create, product_id: @product.id, review: { id: @review.id, rating: @review.rating, name: @review.name, text: @review.text, product_id: @review.product_id }
    end
    assert_redirected_to product_path(products(:passing_product))
  end

end

# product_id: @review.id

# review: { id: @review.id, rating: @review.rating, name: @review.name, text: @review.text, product_id: @review.product_id }
