class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :borrowings, dependent: :destroy
  has_many :books, through: :borrowings

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
