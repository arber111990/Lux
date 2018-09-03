class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :reviews
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :days, presence: true

  monetize :amount_cents

end
