# == Schema Information
#
# Table name: teams
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :memberships
  has_many :members,
    through: :memberships,
    source: :user

  has_one :project
end
