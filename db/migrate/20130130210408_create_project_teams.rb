class CreateProjectTeams < ActiveRecord::Migration
  def change
    create_table :project_teams do |t|
      t.belongs_to :project
      t.belongs_to :team

      t.timestamps
    end
    add_index :project_teams, :project_id
    add_index :project_teams, :team_id
  end
end
