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
      total_rev += order_item.quantity * product.price
    end
    total_rev
  end

  def total_revenue_by_status(status)
    total_rev = 0
    order_items.each do |order_item|
      if order_item.order.completion_status == status
        total_rev += order_item.quantity * product.price
      end
    end
    total_rev
  end

  def count_of_orders(status)

    order_count = 0
    # map returns a new array
    orders = order_items.map do |order_item|
      order_item.order
    end
    orders.uniq

# need to get the count of the orders by status
      if order_item.order.completion_status == status
        order_count += 1
      end
  end

end
