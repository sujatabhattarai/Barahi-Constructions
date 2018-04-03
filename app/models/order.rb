class Order < ApplicationRecord
  validates :order_date, presence: true
  validates :duration, presence: true
  validates :equipment, presence: true, length: { minimum: 5}
end