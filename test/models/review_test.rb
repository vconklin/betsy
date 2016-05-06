require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test "should save a review with a rating and product_id" do
    assert reviews(:review).save, "Did not save the review with a rating"
  end

  test "should not save review without rating but with product" do
    review = Review.new(product_id: 1)
    assert_not review.save, "Saved the review without a rating"
  end

  test "should not save review without product but with rating" do
    review = Review.new(rating: 3)
    assert_not review.save, "Saved the review without a product"
  end
  #
  # test "review must belong to a product" do
  #   assert_not reviews(:review_with_no_product).valid?, "Saved the review without a product"
  # end

  # test "review cant exist without a product" do
  #   assert true
  # end
  #
  # test "review has a rating" do
  #   assert true
  # end
  #
  # test "review cant exist without a rating" do
  #   assert true
  # end
end
