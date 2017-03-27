class Tour < ApplicationRecord
  validates :name, presence: true, length: { maximum: 70 }
  validates :description, presence: true, length: { maximum: 1000 }

  # santo
  belongs_to :user

  # santo
  has_many :attachments, dependent: :destroy

  # ssanto
  has_many :reservations, dependent: :destroy

  # santo
  accepts_nested_attributes_for :reservations, reject_if: :all_blank

end
