# == Schema Information
#
# Table name: project_teams
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  project_id :integer
#  team_id    :integer
#  updated_at :datetime         not null
#
# Indexes
#
#  index_project_teams_on_project_id  (project_id)
#  index_project_teams_on_team_id     (team_id)
#

class ProjectTeam < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # ProjectTeam joins projects and teams.
  #

  belongs_to :project
  belongs_to :team
end
