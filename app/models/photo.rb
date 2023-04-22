class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :category, counter_cache: true, optional: true
  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, presence: true
  validates :description, length: { in: 1..200 }, allow_blank: true

  # after_create :increment_photos_count
  # after_destroy :decrement_photos_count

  # private

  # def increment_photos_count
  #   return unless photos_type == "Photo"

  #   photos.increment!(:comments_count)
  #   # photos.increment(:comments_count).save
  # end

  # def decrement_photos_count
  #   return unless photos_type == "Photo"

  #   photos.decrement!(:comments_count)
  #   # photos.decrement(:comments_count).save
  # end

end
