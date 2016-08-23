require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
   test "layout links" do
    get root_path
    assert_template 'basic_page/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", login_path
  end
end
