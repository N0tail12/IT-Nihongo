class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :commentID
      t.integer :blogID
      t.text :contentComment
      t.integer :userID

      t.timestamps
    end
  end
end
