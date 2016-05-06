require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test "should not save review without rating" do
    review = Review.new
    assert_not review.save, "Saved the review without a rating"
  end

  test "should save a review with a rating" do
    assert reviews(:review).save, "Did not save the review with a rating"
  end

  test "review belongs to a product" do
    assert_same reviews(:review).product, products(:product)
  end

  test "review must belong to a product" do

  end

  #
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
