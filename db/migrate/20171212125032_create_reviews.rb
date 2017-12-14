class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :rating
      t.string :title
<<<<<<< HEAD
      t.belongs_to :restaurant
=======
      t.belongs_to :restaurant 
>>>>>>> 20a5909e0d5b1de5daae77effa84eed7fe0ce801
      t.timestamps
    end
  end
end
