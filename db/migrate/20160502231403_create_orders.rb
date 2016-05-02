class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :card_name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.integer :credit_card, null: false
      t.string :exp_date, null: false
      t.integer :cvv, null: false
      t.string :zip, null: false

      t.timestamps null: false
    end
  end
end
