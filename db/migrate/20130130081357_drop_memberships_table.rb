class DropMembershipsTable < ActiveRecord::Migration
  def up
    remove_index :memberships, :user_id
    remove_index :memberships, :team_id

    drop_table :memberships
  end

  def down
    create_table :memberships do |t|
      t.belongs_to :user
      t.belongs_to :team
      t.text :concerns
      t.text :description
      t.text :location

      t.timestamps
    end
    add_index :memberships, :user_id
    add_index :memberships, :team_id
  end
end
