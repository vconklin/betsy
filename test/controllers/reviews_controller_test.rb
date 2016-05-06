require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase

  def setup
    @product = products(:passing_product)
  end

  test "should get new" do
    get :new, product_id: @product.id
    assert_response :success
  end

  test "should post create" do
    post :create, :review => { :name => "Anna", :rating => "5", :text => "So great.", :product_id => @product.id }
  end

end
