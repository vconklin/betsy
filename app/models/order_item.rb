class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}

  def sub_total
    (product.price * quantity)/100.0
  end

end
