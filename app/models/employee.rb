class Employee < ApplicationRecord
  before_save {self.email = email.downcase}

  validates :first_name, presence: true,length: { minimum: 3, maximum: 20}
  validates :last_name, presence: true, length: { minimum: 3, maximum: 25}
  validates :phn_num, presence: true
  validates :address, presence: true, length: { minimum: 15}
  VALID_EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            length: {maximum: 105},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}
end
