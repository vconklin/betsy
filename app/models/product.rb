class Product < ActiveRecord::Base
  has_many :reviews
  has_many :order_items
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}

end
