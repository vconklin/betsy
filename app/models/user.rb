class User < ActiveRecord::Base
  has_many :products
  has_many :order_items, through: :products

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_secure_password


  def self.log_in(email, password)
    somebody = find_by(email: email)
    somebody && somebody.authenticate(password)
  end


  def total_revenue
    total_rev = 0
    order_items.each do |order_item|
      products.each do |product|
        total_rev += order_item.quantity * product.price
      end
    end
    total_rev
  end

  def total_revenue_by_status(status)
    total_rev = 0
    order_items.each do |order_item|
      if order_item.order.completion_status == status
        total_rev += order_item.quantity * order_item.product.price
      end
    end
    total_rev
  end

  def count_of_orders(status)
    Product.where(user_id: self.id).flat_map do |product|
      check_status(status, product)
    end.uniq.count
  end

  private

  def check_status(status, product)
    get_order_from_item(product).select do |order|
      order.completion_status == status
    end
  end

  def get_order_from_item(product)
    product.order_items.map do |order_item|
      order_item.order
    end
  end

end
