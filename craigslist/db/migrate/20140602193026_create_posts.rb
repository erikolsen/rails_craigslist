class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.string :secret_url

      t.timestamps
    end
  end
end
