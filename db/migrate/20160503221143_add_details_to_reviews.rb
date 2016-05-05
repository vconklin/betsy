class AddDetailsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :text, :string
  end
end
