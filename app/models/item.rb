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
  def init
    self.rating ||= 0
  end
end
