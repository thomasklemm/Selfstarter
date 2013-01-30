# == Schema Information
#
# Table name: projects
#
#  created_at  :datetime         not null
#  description :text
#  ends_at     :datetime
#  id          :integer          not null, primary key
#  slug        :text
#  starts_at   :datetime
#  subtitle    :text
#  team_id     :integer
#  title       :text
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_projects_on_slug     (slug) UNIQUE
#  index_projects_on_team_id  (team_id)
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

  # Team and founders
  belongs_to :team,
    autosave: true
  validates :team_id, presence: true

  def founders
    team.founders
  end

  # Rewards
  has_many :rewards,
    dependent: :destroy

  # Backings and backers
  has_many :backings,
    dependent: :restrict # do not destroy project if there are backings associated
  has_many :backers,
    through: :backings,
    source: :user

  # Slug for friendly url
  validates :slug,
    presence: true,
    uniqueness: true
end
