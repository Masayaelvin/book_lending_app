require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  def setup
    @user = User.create(email: "user@example.com", password: "password")
    @book = Book.create(title: "Sample Book", author: "John Doe", isbn: SecureRandom.uuid, available: true)
    @borrowing = Borrowing.new(user: @user, book: @book)
  end


  test "borrowing should be valid" do
    assert @borrowing.valid?
  end

  test "borrowing should require a user" do
    @borrowing.user = nil
    assert_not @borrowing.valid?
  end

  test "borrowing should require a book" do
    @borrowing.book = nil
    assert_not @borrowing.valid?
  end

  test "should set due date before creation" do
    @borrowing.save
    assert_not_nil @borrowing.due_date
    assert_equal Date.today + 14.days, @borrowing.due_date
  end
end
