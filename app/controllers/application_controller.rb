class ApplicationController < ActionController::Base
  # include Pundit
  protect_from_forgery

private

  def current_user?
    user_signed_in?
  end
  helper_method :current_user?

end
