# == Schema Information
#
# Table name: teams
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  location    :text
#  name        :text
#  pitch       :text
#  updated_at  :datetime         not null
#

class Team < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # Founders make up a team. The team is the central model
  # to start projects. Each team can have multiple projects.
  #

  # Memberships and founders
  has_many :memberships
  has_many :founders,
    through: :memberships,
    source: :user

  # Project teams and projects
  has_many :project_teams,
    dependent: :restrict
  has_many :projects,
    through: :project_teams

  # Validations
  validates :name, presence: true
end
