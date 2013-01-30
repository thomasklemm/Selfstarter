class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user?
    user_signed_in?
  end
  helper_method :current_user?

  def current_team
    if current_user && current_user.team
      current_user.team
    end
  end
  helper_method :current_team

  def current_team?
    current_team.present?
  end
  helper_method :current_team?
end
