class RemoveImageFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :image, :text
  end
end
