class Order < ApplicationRecord
  belongs_to :user
  has_many :orders
  monetize :amount_cents
end
