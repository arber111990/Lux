class Item < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  #removed rating validation
  validates :price, presence: true
  validates :location, presence: true
end
