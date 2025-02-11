class BooksController < ApplicationController
  before_action :require_login, only: [:show] 

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def require_login
    unless current_user
      redirect_to login_path, alert: "You must be logged in to view this page."
    end
  end
end
