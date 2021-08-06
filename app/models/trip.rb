class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings, through: :users, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :title, presence: true
  validates :category, presence: true
  validates :price, presence: true
end
