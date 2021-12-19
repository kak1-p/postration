class Group < ApplicationRecord
  validates :group_name, presence: true, uniqueness: true

  has_many :group_users
  has_many :users, through: :group_users
  has_many :groupposts
  accepts_nested_attributes_for :group_users
end
