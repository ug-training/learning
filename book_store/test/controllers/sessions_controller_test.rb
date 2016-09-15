require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_users_session_path
    assert_response :success
    assert_select "title", "login - Book World"
  end
end
