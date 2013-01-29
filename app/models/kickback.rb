# == Schema Information
#
# Table name: kickbacks
#
#  backing_id :integer
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  reward_id  :integer
#  updated_at :datetime         not null
#
# Indexes
#
#  index_kickbacks_on_backing_id  (backing_id)
#  index_kickbacks_on_reward_id   (reward_id)
#

class Kickback < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # Kickback is the model joining backings with rewards.
  # Backers can select zero or one reward for their backing.
  # This selection is stored in the kickback join model.
  #
  belongs_to :backing
  belongs_to :reward
end
