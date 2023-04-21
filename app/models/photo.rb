class Photo < ApplicationRecord
  belongs_to :category, counter_cache: true, optional: true
  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, presence: true
  validates :description, length: { in: 1..100 }, allow_blank: true
end
