class Category < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, length: { in: 20..100 }, allow_blank: true
end
