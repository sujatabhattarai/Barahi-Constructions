class Account < ApplicationRecord
  validates :customer_name, presence: true, length: { minimum: 8, maximum: 60}
  validates :total_amount, presence: true
  validates :amount_paid, presence: true
end