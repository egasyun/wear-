class Clothe < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :links
  has_many :cordinates, through: :links
end
