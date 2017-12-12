class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :rating
      t.string :title
      t.belongs_to :restaurant 
      t.timestamps
    end
  end
end
