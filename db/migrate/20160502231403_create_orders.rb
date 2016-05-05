class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :card_name
      t.string :email
      t.string :address
      t.integer :credit_card
      t.string :exp_date
      t.integer :cvv
      t.string :zip
<<<<<<< HEAD
=======
      t.integer :user_id
>>>>>>> master

      t.timestamps null: false
    end
  end
end
