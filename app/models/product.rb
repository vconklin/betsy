class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :user
  has_many :reviews
  has_and_belongs_to_many :categories, :join_table => "categories_products"

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :weight_lbs, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :length_in, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :width_in, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :height_in, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :units, presence: true

  def update_categories(array)
    # take the array that is passed in, deals with the inevitable weird blank value, and turn them into integers
    # self.categories.each do |category|
    #
    # end



    categories_array = array.reject!(&:blank?).map {|element| element.to_i}
    # find the categories that matches those category_ids (the ones in the array) and shovel into product
    self.categories = Category.find(categories_array)
  end
end
