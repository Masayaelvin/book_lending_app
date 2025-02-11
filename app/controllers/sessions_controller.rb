class SessionsController < ApplicationController
  # skip_before_action :require_login, only: %i[new create]

  def new
  end

  def create
    if user = User.authenticate_by(params.permit(:email, :password))
      start_new_session_for user
      redirect_to user_profile_path, notice: "Welcome back, #{user.email}!" # Redirect to books index
    else
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def destroy
    terminate_session
    redirect_to books_path, notice: "You have been logged out."
  end
end
