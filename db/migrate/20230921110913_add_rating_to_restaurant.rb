class AddRatingToRestaurant < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :rating, :float
  end
end
