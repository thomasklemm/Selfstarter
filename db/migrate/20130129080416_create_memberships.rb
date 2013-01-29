class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :user
      t.belongs_to :team

      t.timestamps
    end
    add_index :memberships, :user_id
    add_index :memberships, :team_id
  end
end
