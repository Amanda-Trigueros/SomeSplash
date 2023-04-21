class Photo < ApplicationRecord
  belongs_to :category, counter_cache: true, optional: true
  has_many :comments

  validates :title, presence: true 
  validates :description, length: { in: 20..100 }, allow_blank: true
end
