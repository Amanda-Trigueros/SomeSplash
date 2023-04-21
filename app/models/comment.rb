class Comment < ApplicationRecord
  validates :body, length: { in: 20..200 }, allow_blank: true

  belongs_to :commentable, polymorphic: true
  belongs_to :photos, counter_cache: true, optional: true
end
