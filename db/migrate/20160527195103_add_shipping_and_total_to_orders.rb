class AddShippingAndTotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_with_shipping, :decimal
    add_column :orders, :shipping_type, :string
    add_column :orders, :shipping_rate, :decimal
  end
end
