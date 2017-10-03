class AddAnotationToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :anotation, :text
  end
end
