# == Schema Information
#
# Table name: teams
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  # attr_accessible :title, :body
end
