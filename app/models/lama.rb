class Lama < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :title, :description, :price, :capacity, presence: true
  validates :title, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.search(search)
    if search
      Lama.where("address like ?", "%#{search}%")
    else
      Lama.all
    end
  end
end
