class RemoveSlugFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :slug
  end

  def down
    add_column :projects, :slug, :text
    add_index :projects, :slug, unique: true
  end
end
