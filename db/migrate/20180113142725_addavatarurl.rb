class Addavatarurl < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :avatar_url, :string
  end
end