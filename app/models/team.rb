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
  # The team is the central model to start a project.
  # Each team can have one project at the moment.
  # Founders make up a team.
  #

  # Membership and founders
  has_many :memberships
  has_many :founders,
    through: :memberships,
    source: :user

  # Projects the team creates
  has_one :project
end
