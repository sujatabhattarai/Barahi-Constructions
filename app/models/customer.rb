class Customer < ApplicationRecord
  before_save {self.email = email.downcase}

  validates :full_name, presence: true,length: { minimum: 8, maximum: 60}
  validates :phn_num, presence: true
  validates :address, presence: true, length: { minimum: 15}
  VALID_EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            length: {maximum: 105},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}
end