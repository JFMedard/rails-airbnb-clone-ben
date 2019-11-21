class Lama < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :title, :description, :price, :capacity, presence: true
  validates :title, uniqueness: true

  def self.search(search)
    if search
      Lama.where("address like ?", "%#{search}%")
    else
      Lama.all
    end
  end
end
