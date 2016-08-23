require 'test_helper'

class BasicPageControllerTest < ActionDispatch::IntegrationTest
	def setup
		@second_title = "Book World"
	end
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home - #{@second_title}"
  end

  test "should get login" do
    get login_path
    assert_response :success
    assert_select "title", "Login - #{@second_title}"
  end

end
