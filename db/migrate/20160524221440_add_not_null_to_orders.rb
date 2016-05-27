class AddNotNullToOrders < ActiveRecord::Migration
  def change
    change_column :orders, :state, :string, null: false
    change_column :orders, :city, :string, null: false
    change_column :orders, :country, :string, null: false
  end
end
