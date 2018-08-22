class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :reviews
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :number_of_people, presence: true
  validates :price, presence: true
end
