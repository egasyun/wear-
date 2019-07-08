class Cordinate < ApplicationRecord

  has_many :links
  has_many :clothes, through: :links
  belongs_to :user

  accepts_nested_attributes_for:links , allow_destroy: true
end
