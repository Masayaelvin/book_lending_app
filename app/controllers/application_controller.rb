class ApplicationController < ActionController::Base
  before_action :set_current_user
  helper_method :current_user

  private

  def set_current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_user
    @current_user
  end

  # ✅ Add this method to create a session for a logged-in user
  def start_new_session_for(user)
    session[:user_id] = user.id
  end

  # ✅ Add this method to log out a user
  def terminate_session
    session[:user_id] = nil
  end

  def require_login
    unless current_user
      redirect_to login_path, alert: "You must be logged in to access this page."
    end
  end
end
