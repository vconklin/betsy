class ChangeNullToTrueOrders < ActiveRecord::Migration
  def change
    change_column :orders, :state, :string, null: true
    change_column :orders, :city, :string, null: true
    change_column :orders, :country, :string, null: true
  end
end
