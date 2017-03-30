class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  # santo
  has_many :tours, dependent: :destroy

  # santo
  has_many :reservations, dependent: :destroy

  # santo
  accepts_nested_attributes_for :reservations, reject_if: :all_blank

end
