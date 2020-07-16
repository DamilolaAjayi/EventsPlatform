require 'test_helper'

class CostTrackerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cost_tracker_create_url
    assert_response :success
  end

end
