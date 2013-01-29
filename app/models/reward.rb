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

  belongs_to :project
end
