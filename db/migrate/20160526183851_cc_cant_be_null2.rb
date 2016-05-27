class CcCantBeNull2 < ActiveRecord::Migration
  def change
    change_column :orders, :credit_card, :string, null: true
  end
end
