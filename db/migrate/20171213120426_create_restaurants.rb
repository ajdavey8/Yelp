class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :price_range
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
