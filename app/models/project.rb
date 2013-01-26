# == Schema Information
#
# Table name: projects
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  slug        :text
#  title       :text
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_projects_on_slug  (slug) UNIQUE
#

class Project < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  extend FriendlyId
  friendly_id :title, use: :slugged
end
