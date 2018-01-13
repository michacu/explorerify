class AddparamsToadmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
    add_column :admins, :avatar, :string
    add_column :admins, :nickname, :string
    add_column :admins, :past_countries, :text
    add_column :admins, :want_countries, :text
    add_column :admins, :about, :text
  end
end