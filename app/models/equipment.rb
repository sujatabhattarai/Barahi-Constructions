class Equipment < ApplicationRecord

  validates :name, presence: true, length: {minimum: 5, maximum: 50}
  validates :count, presence: true

end