class RemoveSlugFromTeams < ActiveRecord::Migration
  def up
    remove_column :teams, :slug
  end

  def down
    add_column :teams, :slug, :text
    add_index :teams, :slug, unique: true
  end
end
