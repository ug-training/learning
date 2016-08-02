require 'test_helper'

class StatPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get stat_page_home_url
    assert_response :success
  end

  test "should get help" do
    get stat_page_help_url
    assert_response :success
  end

end
