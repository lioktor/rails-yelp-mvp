class RemoveReviewFromRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :reviews, :text
  end
end
