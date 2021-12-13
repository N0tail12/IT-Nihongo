class RemoveCommentIdFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :commentID, :integer
  end
end
