class Lama < ApplicationRecord
  belongs_to :user
  validates :title, :description, :price, :capacity, presence: true
  validates :title, uniqueness: true
end
