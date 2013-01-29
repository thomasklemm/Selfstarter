class AddDateFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :starts_at, :datetime
    add_column :projects, :ends_at, :datetime
    add_column :projects, :subtitle, :text
  end
end
