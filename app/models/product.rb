class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :user
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}

end
