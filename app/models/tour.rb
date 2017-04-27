class Tour < ApplicationRecord
  validates :name, presence: true, length: { maximum: 70 }
  validates :description, presence: true, length: { maximum: 1000 }

  # santo
  belongs_to :user

  # santo
  has_many :attachments, dependent: :destroy

  # santo
  accepts_nested_attributes_for :attachments, reject_if: :all_blank

  # ssanto
  has_many :bookings, dependent: :destroy

  # santo
  accepts_nested_attributes_for :bookings, reject_if: :all_blank

end
