class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owned_lamas, dependent: :destroy, class_name: 'Lama'
  has_many :bookings
  # Validate password
  validates_length_of :password, in: 6..20, on: :create

end
