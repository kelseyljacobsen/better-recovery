class ChangeTitleColumnToRatingForReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :title, :string
    add_column :reviews, :rating, :integer
  end
end
