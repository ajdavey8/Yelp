class CreateReviews < ActiveRecord::Migration[5.1]
  def change

    create_table :restaurants do |t|
      t.string :id
    end

    create_table :users do |t|
      t.string :id
    end

    create_table :reviews do |t|
      t.text :body
      t.integer :rating
      t.string :title
      t.belongs_to :restaurant
      t.belongs_to :user
      t.timestamps
    end
  end
end
