class Comment < ApplicationRecord
  validates :body, presence: true
  validates :description, length: { in: 20..200 }
end
