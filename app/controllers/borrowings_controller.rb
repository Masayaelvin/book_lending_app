class BorrowingsController < ApplicationController
  before_action :require_login # Ensure user is logged in before borrowing

  def create
    book = Book.find(params[:book_id])

    if book.available?
      borrowing = current_user.borrowings.new(book: book, due_date: 14.days.from_now) #  Ensure due_date is set

      if borrowing.save
        book.update(available: false) # update book if borrowing succeeds
        redirect_to books_path, notice: "Book borrowed successfully."
      else
        redirect_to book_path(book), alert: "Error borrowing the book. Please try again."
      end
    else
      redirect_to book_path(book), alert: "This book is already borrowed."
    end
  end

  def destroy
    borrowing = current_user.borrowings.find(params[:id])
    borrowing.book.update(available: true)#update the succesful return of a book 
    borrowing.destroy
    redirect_to user_profile_path, notice: "Book returned successfully."
  end
end
