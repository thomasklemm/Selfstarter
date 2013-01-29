# == Schema Information
#
# Table name: teams
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  has_many :memberships
  has_many :members,
    through: :memberships,
    source: :user
end
