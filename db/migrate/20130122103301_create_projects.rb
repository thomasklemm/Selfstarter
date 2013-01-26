class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :title
      t.text :description
      t.text :slug

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
