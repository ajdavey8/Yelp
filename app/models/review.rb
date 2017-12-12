class Review < ApplicationRecord
  belongs_to :restaurant, index: true
end
