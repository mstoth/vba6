class Venue < ApplicationRecord
  has_one_attached :avatar
  has_many :concerts
  belongs_to :user
end
