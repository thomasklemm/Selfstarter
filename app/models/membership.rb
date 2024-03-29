# == Schema Information
#
# Table name: memberships
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  team_id    :integer
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_memberships_on_team_id  (team_id)
#  index_memberships_on_user_id  (user_id)
#

class Membership < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  #
  # Membership associates founders with teams.
  #
  belongs_to :user
  belongs_to :team
end
