require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test "review with valid rating and product will save" do
    assert reviews(:passing_review).save
  end

  test "review saves with valid rating & without a product" do
    assert reviews(:no_product).save
  end

  test "review belongs to its correct product" do
    assert_includes products(:passing_product).reviews, reviews(:passing_review)
  end

  test "review with product & no rating wont save" do
    assert_not reviews(:no_rating).save
  end

  test "validate for presence of rating" do
    assert_not reviews(:no_rating).valid?
    assert_equal [:rating], reviews(:no_rating).errors.keys
  end

  test "validate for presence of rating between 1-5" do
    assert_not reviews(:rating_is_8).valid?
    assert_equal [:rating], reviews(:rating_is_8).errors.keys
  end

  test "validate for presence of rating thats an integer" do
    assert_not reviews(:rating_is_b).valid?
    assert_equal [:rating], reviews(:rating_is_b).errors.keys
  end

end
