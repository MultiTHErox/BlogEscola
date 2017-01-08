class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :description
      t.integer :visible
      t.string :name
      t.integer :post_id

      t.timestamps null: false
    end
    add_index :comments, :post_id
  end
end
