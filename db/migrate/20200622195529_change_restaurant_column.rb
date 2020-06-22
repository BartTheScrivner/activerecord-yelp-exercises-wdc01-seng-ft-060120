class ChangeRestaurantColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :dishes, :restaurant, :integer
    rename_column :dishes, :restaurant, :restaurant_id
  end
end
