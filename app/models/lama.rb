class Lama < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :price, :capacity, presence: true
  validates :title, uniqueness: true
end
