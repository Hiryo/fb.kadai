class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: {in: 1..140}

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user

  mount_uploader :image, ImageUploader
end
