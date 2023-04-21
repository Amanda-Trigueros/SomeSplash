class Photo < ApplicationRecord
  belongs_to :category, counter_cache: true, optional: true

  validates :title, presence: true
  validates :description, length: { in: 20..100 }
end
