class Photo < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :description, length: { in: 20..100 }
end
