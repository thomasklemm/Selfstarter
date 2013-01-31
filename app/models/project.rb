# == Schema Information
#
# Table name: projects
#
#  created_at  :datetime         not null
#  description :text
#  ends_at     :datetime
#  id          :integer          not null, primary key
#  starts_at   :datetime
#  subtitle    :text
#  title       :text
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # A project is the central point of interest
  # and the main entrance point to our site.
  # A project is created by a team, which is made up
  # of the team's founders.
  # Backers can back projects by making a backing,
  # their pledge.
  # A project has many rewards, zero or one of which
  # can be selected by backers as a kickback
  # for their backing.

  # ProjectTeam and team
  has_one :project_team
  has_one :team,
    through: :project_team

  # Rewards
  has_many :rewards,
    dependent: :destroy

  # Backings and backers
  has_many :backings,
    dependent: :restrict # do not destroy project if there are backings associated
  has_many :backers,
    through: :backings,
    source: :user

  # Validations
  validates :title, presence: true
end
