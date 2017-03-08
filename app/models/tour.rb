class Tour < ApplicationRecord
  validates :name, presence: true, length: { maximum: 70 }
  validates :description, presence: true, length: { maximum: 1000 }
end
