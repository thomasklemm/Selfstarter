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

  belongs_to :team

  has_many :rewards

  has_many :backings
  has_many :backers,
    through: :backings,
    source: :user

  extend FriendlyId
  friendly_id :title, use: :slugged
end
