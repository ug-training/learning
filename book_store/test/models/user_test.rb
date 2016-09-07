require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "Example", last_name: "User", email: "user@example.com", password: "m2@Ethey", password_confirmation: "m2@Ethey")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end
  
  test "last name should be present" do
    @user.last_name = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "first name should not be too long" do
    @user.first_name = "a" * 21
    assert_not @user.valid?
  end

  test "last name should not be too long" do
    @user.last_name = "a" * 21
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 55 + "@example.com"
    assert_not @user.valid?
  end  

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COm AUS-ER@foo.bar]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. user.last@foo.org user@for.bar.last
                           foo@bar_baz.com foo@bar+baz.com alice+bob@baz.cn user1@example.com A_US-ER@foo.bar user_ew@for.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase    
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end  

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 8
    assert_not @user.valid?
  end

  test "to check the password format" do
    @user.password = 'm2@Ethey'
    @user.save
    @user.password_confirmation = 'm2@Ethey'
    @user.save
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:activation, '')
  end  

  test "Books for user should be destroyed" do
    @user.save
    @user.books.create!(book_name: "Lorem ipsum", author: "king john", price: 555)
    assert_difference 'Book.count', -1 do
    @user.destroy
    end
  end
end
