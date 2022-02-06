require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get page_form_url
    assert_response :success
  end
end
