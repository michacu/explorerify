class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.text :body
      t.text :anotation
      t.string :title
      t.string :tags
      t.string :title_image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
