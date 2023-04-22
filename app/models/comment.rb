class Comment < ApplicationRecord
  validates :body, length: { in: 1..200 }, allow_blank: true

  belongs_to :commentable, polymorphic: true
  belongs_to :photo, counter_cache: true, optional: true

  after_create :increment_comments_count
  after_destroy :decrement_comments_count

  private

  def increment_comments_count
    return unless commentable_type == "Photo"

    commentable.increment!(:comments_count)
    # commentable.increment(:comments_count).save
  end

  def decrement_comments_count
    return unless commentable_type == "Photo"

    commentable.decrement!(:comments_count)
    # commentable.decrement(:comments_count).save
  end
end
