require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get homeowner" do
    get dashboards_homeowner_url
    assert_response :success
  end

  test "should get tradesperson" do
    get dashboards_tradesperson_url
    assert_response :success
  end
end
