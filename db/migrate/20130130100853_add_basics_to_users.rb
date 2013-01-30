class AddBasicsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :location, :text
    add_column :users, :concerns, :text
    add_column :users, :description, :text
  end
end
