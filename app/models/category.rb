class Category < ApplicationRecord
  has_many :photos, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, length: { in: 20..100 }
end
