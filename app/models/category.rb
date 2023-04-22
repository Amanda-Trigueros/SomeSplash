class Category < ApplicationRecord
  has_one_attached :cover
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, length: { in: 1..200 }, allow_blank: true
end
