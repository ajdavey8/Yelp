class Restaurant < ApplicationRecord
  has_many :reviews
  mount_uploader :image, ImageUploader
end
