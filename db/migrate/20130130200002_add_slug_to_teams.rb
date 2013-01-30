class AddSlugToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :slug, :text
    add_index :teams, :slug, unique: true
  end
end
