class Equipment < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 25}
  validates :vendor, presence: true, length: { minimum: 5, maximum: 55}
end
