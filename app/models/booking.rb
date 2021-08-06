class Booking < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  belongs_to :trip
  validates :start_date, presence: true
  validates :end_date, presence: true
end
