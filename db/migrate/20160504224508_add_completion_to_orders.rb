class AddCompletionToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :completion_status, :string
  end
end
