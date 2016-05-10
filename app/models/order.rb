class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user

  # validates :email, presence: true
  # validates :address, presence: true
  # validates :credit_card, presence: true
  # validates :exp_date, presence: true
  # validates :cvv, presence: true
  # validates :zip, presence: true
end
