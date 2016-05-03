class Review < ActiveRecord::Base
  belongs_to :product
<<<<<<< 5f581a6c3ec6d3e3f6a5262a37986339bba7d3b4

  validates :rating, presence: true, numericality: {only_integer: true, greater_than: 0, less_than: 6}
=======
>>>>>>> add associations between product and review models
end
