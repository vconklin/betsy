class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :user_id, null: false
      t.integer :stock, null: false
      t.string :category
      t.string :description
      t.string :status, null: false
      t.timestamps null: false
    end
  end
end
