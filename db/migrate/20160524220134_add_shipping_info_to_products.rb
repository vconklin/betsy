class AddShippingInfoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :weight_lbs, :integer, null: false
    add_column :products, :length_in, :integer, null: false
    add_column :products, :width_in, :integer, null: false
    add_column :products, :height_in, :integer, null: false
    add_column :products, :units, :string
  end
end
