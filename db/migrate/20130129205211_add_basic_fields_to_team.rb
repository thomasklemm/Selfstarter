class AddBasicFieldsToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :name, :text
    add_column :teams, :location, :text
    add_column :teams, :pitch, :text
    add_column :teams, :description, :text
  end
end
