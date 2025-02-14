require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "test@example.com", password: "password")
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email should be unique" do
    @user.save
    duplicate_user = User.new(email: "test@example.com", password: "password")
    assert_not duplicate_user.valid?
  end

  test "password should be at least 6 characters" do
    @user.password = "12345"
    assert_not @user.valid?
  end

  test "email should be saved in lowercase" do
    @user.email = "User@Example.COM"
    @user.save
    assert_equal "user@example.com", @user.reload.email
  end
end
