require 'test_helper'

class BasicPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home - Book World"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About - Book World"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact - Book World"
  end

end
