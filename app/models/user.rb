class User < ApplicationRecord
  has_many :blogs
  has_secure_password

  validates :name, presence: true, length: { maximum:30 }
  validates :email, presence: true, length: { maximum:255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}, uniqueness: true
  validates :password, length: {minimum: 6 }
end
