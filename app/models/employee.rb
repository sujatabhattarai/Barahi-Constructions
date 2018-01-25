class Employee < ApplicationRecord
  validates :first_name, presence: true,length: { minimum: 3, maximum: 20}
  validates :last_name, presence: true, length: { minimum: 3, maximum: 25}
  validates :phn_num, presence: true
  validates :address, presence: true, length: { minimum: 15}
end
