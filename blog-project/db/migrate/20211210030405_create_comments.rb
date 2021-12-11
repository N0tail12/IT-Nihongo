class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_comments :comments do |t|
      t.text :contentComment
      t.integer :userID
      t.integer :blogID

      t.timestamps
    end
  end
end
