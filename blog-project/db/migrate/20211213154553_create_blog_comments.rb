class CreateBlogComments < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_comments do |t|
      t.integer :user_id
      t.integer :blog_id
      t.text :comment

      t.timestamps
    end
  end
end
