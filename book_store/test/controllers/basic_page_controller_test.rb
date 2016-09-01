require 'test_helper'

class BasicPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home - Book World"
  end
end
