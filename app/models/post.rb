class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
end
