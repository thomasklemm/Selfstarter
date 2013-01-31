# == Schema Information
#
# Table name: backings
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  project_id :integer
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_backings_on_project_id  (project_id)
#  index_backings_on_user_id     (user_id)
#

class Backing < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # A backing is a pledge by a backer to back a project
  #
  belongs_to :project
  belongs_to :backer,
    class_name: 'User'
  validates :project_id, :user_id, presence: true

  # For his backing the user can select zero or one reward,
  # using kickback as the join model
  has_one :kickback,
    dependent: :restrict
  has_one :reward,
    through: :kickback,
    dependent: :restrict
end
