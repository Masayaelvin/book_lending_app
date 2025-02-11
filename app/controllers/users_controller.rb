class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: "Account created successfully! Please log in."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @borrowed_books = current_user.borrowings.includes(:book) # ✅ Fetch borrowed books
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
