class CreateBackings < ActiveRecord::Migration
  def change
    create_table :backings do |t|
      t.belongs_to :project
      t.belongs_to :user

      t.timestamps
    end
    add_index :backings, :project_id
    add_index :backings, :user_id
  end
end
