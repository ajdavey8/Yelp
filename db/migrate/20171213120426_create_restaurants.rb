class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
<<<<<<< HEAD:db/migrate/20171211162608_create_restaurants.rb
    
=======
      t.integer :price_range
      t.text :description
      t.text :image

>>>>>>> 20a5909e0d5b1de5daae77effa84eed7fe0ce801:db/migrate/20171213120426_create_restaurants.rb
      t.timestamps
    end
  end
end
