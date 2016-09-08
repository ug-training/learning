require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "profile display" do
    get user_path(@user)
    assert_template 'users/show'
    assert_select 'title', "#{@user.email} - Book World"
    assert_select "ul" do
    	assert_select "li", 6
    end
    assert_match @user.books.count.to_s, response.body
    end
  end


