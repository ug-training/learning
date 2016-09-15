require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_registration_path
    assert_response :success
    assert_select "title", "Sign up - Book World"
  end
end
