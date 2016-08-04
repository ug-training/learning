require 'test_helper'

class StatPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get stat_page_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"

  end

  test "should get help" do
    get stat_page_help_url
    assert_response :success
    assert_select "title", "help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get stat_page_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

test "should get contact" do
    get stat_page_contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
