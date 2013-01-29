# == Schema Information
#
# Table name: users
#
#  confirmation_sent_at   :datetime
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  created_at             :datetime         not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  id                     :integer          not null, primary key
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string(255)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  sign_in_count          :integer          default(0)
#  unconfirmed_email      :string(255)
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ActiveRecord::Base
  # FIXME: HOW TO PROTECT THE DEVISE USER MODEL IN THE WORLD OF STRONG_PARAMETERS?
  # include ActiveModel::ForbiddenAttributesProtection
  #
  # SIGNING UP
  # A user can register and needs to confirm his email by clicking
  # an link in a confirmation email prior to performing any actions
  # at our site.
  #
  # TEAMS AND STARTED PROJECTS
  # A user can create or join a team, he then becomes one of its founder.
  # The team can create a project, which show in the user's started projects.
  #
  # BACKINGS AND BACKED PROJECTS
  # Users can make backings (i.e. pledges) to any projects (as long as he isn't
  # one of its founders).
  # Backed projects display a user's financial support of creative ventures.
  #

  # Authentication using Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Memberships and teams
  has_many :memberships
  has_many :teams,
    through: :memberships

  # The projects that any of the associated teams start
  def started_projects
    teams.flat_map(&:project)
  end

  # Backings and backed projects
  has_many :backings
  has_many :backed_projects,
    through: :backings

  # FIXME: ATTR_ACCESSIBLE IS DEACTIVATED I GUESS SOME WAY WHEN I STARTED USING STRONG PARAMETERS!
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
