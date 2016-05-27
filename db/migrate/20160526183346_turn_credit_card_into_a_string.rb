class TurnCreditCardIntoAString < ActiveRecord::Migration
  def change
      change_column :orders, :credit_card, :string, null: false
  end
end
