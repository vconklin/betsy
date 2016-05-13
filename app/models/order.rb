class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user

  validates :card_name, presence: true, length: {minimum: 1}, if: :require_validations
  validates :email, presence: true, length: {minimum: 3}, if: :require_validations
  validates :address, presence: true, if: :require_validations
  validates :credit_card, presence: true, numericality: true, length: {maximum: 19}, if: :require_validations
  validates :exp_date, presence: true, if: :require_validations
  validates :cvv, presence: true, length: {is: 3}, if: :require_validations
  validates :zip, presence: true, length: {minimum: 5}, if: :require_validations

  def require_validations
    persisted?
  end
end
