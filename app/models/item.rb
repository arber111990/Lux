class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  #removed rating validation
  validates :price, presence: true
  validates :location, presence: true
  after_initialize :init
  monetize :price_cents
  def init
    self.rating ||= 0
  end

  def profile
    photo.url.nil? ? "http://res.cloudinary.com/dbhqpuig0/image/upload/v1535041674/xgqq2az3wx08yu4zdva0.png" : photo
  end
end
