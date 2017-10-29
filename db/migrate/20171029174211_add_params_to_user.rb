class AddParamsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :string
    add_column :users, :nickname, :string
    add_column :users, :past_countries, :text
    add_column :users, :want_countries, :text
    add_column :users, :about, :text
  end
end