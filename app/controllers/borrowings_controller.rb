class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    book = Book.find(params[:book_id])

    if book.available?
      borrowing = current_user.borrowings.create(book: book)
      book.update(available: false)
      redirect_to user_path(current_user), notice: "Book borrowed successfully."
    else
      redirect_to book_path(book), alert: "This book is already borrowed."
    end
  end

  def destroy
    borrowing = current_user.borrowings.find(params[:id])
    borrowing.book.update(available: true)
    borrowing.destroy
    redirect_to user_path(current_user), notice: "Book returned successfully."
  end
end
