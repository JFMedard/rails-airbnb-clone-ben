class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lama, dependent: :destroy
  # validates :total_price, :start, :end, :number_of_users, :driver_manager, presence: true
end
