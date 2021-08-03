class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings, through: :users
end
