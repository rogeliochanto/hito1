require "test_helper"

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get count" do
    get likes_count_url
    assert_response :success
  end
end
