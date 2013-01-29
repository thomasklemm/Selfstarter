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
  belongs_to :project
  belongs_to :user
  # attr_accessible :title, :body
end
