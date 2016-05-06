require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "an order item must have a quantity" do
    assert_not_nil order_items(:beyonce_air_item).quantity
  end

  
end
