# == Schema Information
#
# Table name: rewards
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  project_id :integer
#  updated_at :datetime         not null
#
# Indexes
#
#  index_rewards_on_project_id  (project_id)
#

class Reward < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # A project can offer multiple rewards / reward tiers
  # for backers to select from when making a backing.
  # A backing back have zero or one reward selected.
  # The backer's choice is stored in the kickback model.
  #
  belongs_to :project,
    autosave: true

  # Choices of rewards are recorded in the kickback model
  has_many :kickbacks,
    dependent: :restrict
  has_many :backings,
    through: :kickbacks

  # Backers are people who made a pledge to the project
  # and picked this reward as their kickback
  def backers
    backings.flat_map(&:backers)
  end
end
