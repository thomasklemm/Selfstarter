class CreateKickbacks < ActiveRecord::Migration
  def change
    create_table :kickbacks do |t|
      t.belongs_to :backing
      t.belongs_to :reward

      t.timestamps
    end
    add_index :kickbacks, :backing_id
    add_index :kickbacks, :reward_id
  end
end
