class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.text :content
      t.integer :userID
      t.integer :conmmentID
      t.string :time
      t.integer :status

      t.timestamps
    end
  end
end
