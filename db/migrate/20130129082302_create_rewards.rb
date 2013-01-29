class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.belongs_to :project

      t.timestamps
    end
    add_index :rewards, :project_id
  end
end
