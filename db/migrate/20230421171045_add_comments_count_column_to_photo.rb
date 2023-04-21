class AddCommentsCountColumnToPhoto < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :comment_count, :integer
  end
end
