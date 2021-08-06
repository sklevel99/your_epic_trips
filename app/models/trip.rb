class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings, through: :users
  validates :title, presence: true
  validates :category, presence: true
  validates :price, presence: true

  has_one_attached :photo
end
