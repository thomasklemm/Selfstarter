class AddBasicFieldsToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :concerns, :text
    add_column :memberships, :location, :text
    add_column :memberships, :description, :text
  end
end
