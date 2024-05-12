require "test_helper"

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get homepage_new_url
    assert_response :success
  end
end
