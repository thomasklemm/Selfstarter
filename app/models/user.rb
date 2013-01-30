# == Schema Information
#
# Table name: users
#
#  concerns               :text
#  confirmation_sent_at   :datetime
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  created_at             :datetime         not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string(255)
#  description            :text
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  first_name             :text
#  full_name              :text
#  id                     :integer          not null, primary key
#  last_name              :text
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string(255)
#  location               :text
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  sign_in_count          :integer          default(0)
#  team_id                :integer
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

  # Membership in team
  belongs_to :team,
    autosave: true

  # The project of the associated team
  def started_project
    team.project
  end

  # Backings and backed projects
  has_many :backings,
    dependent: :restrict
  has_many :backed_projects,
    through: :backings

  # Validations
  # Devise validates presence of email and password on its own
  validates :first_name, :last_name, presence: true

  # Virtual attributes
  def full_name
    "#{ first_name } #{ last_name }"
  end

  # REVIEW: THIS IS CURRENTLY WORKING, YEAH!
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me,
                  :location, :concerns, :description
end
