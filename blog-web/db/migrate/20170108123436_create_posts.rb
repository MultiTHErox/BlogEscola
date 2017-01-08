class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :image_post
      t.text :body_text
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :posts, :user_id
    add_index :posts, :category_id
  end
end
