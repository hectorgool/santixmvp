class Booking < ApplicationRecord
  validates :date, presence: true
  validates :customers, presence: true
  validates :customers, numericality: { greater_than: 0 }
  #validates :departure_time, presence: true
  belongs_to :tour
  belongs_to :user
end
