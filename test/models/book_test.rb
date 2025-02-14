require "test_helper"

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "1234567890", available: true)
  end

  test "book should be valid" do
    assert @book.valid?
  end

  test "title should be present" do
    @book.title = ""
    assert_not @book.valid?
  end

  test "author should be present" do
    @book.author = ""
    assert_not @book.valid?
  end

  test "ISBN should be present" do
    @book.isbn = ""
    assert_not @book.valid?
  end

  test "ISBN should be unique" do
    @book.save
    duplicate_book = @book.dup
    assert_not duplicate_book.valid?
  end

  test "available? should return correct status" do
    assert @book.available?
    @book.update(available: false)
    assert_not @book.available?
  end
end
