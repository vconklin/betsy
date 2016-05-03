class Product < ActiveRecord::Base
<<<<<<< 5f581a6c3ec6d3e3f6a5262a37986339bba7d3b4
  has_many :order_items
  belongs_to :user
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}

=======
>>>>>>> add associations between product and review models
end
