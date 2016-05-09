class AddProductIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :product_id, :string
  end
end
