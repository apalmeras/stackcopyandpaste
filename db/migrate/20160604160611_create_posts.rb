class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :author
      t.text :category

      t.timestamps null: false
    end
  end
end
