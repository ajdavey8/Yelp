class Review < ApplicationRecord
  attr_accessible :name, :user_id
  belongs_to :restaurant
  belongs_to :user
end
