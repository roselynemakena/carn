require 'test_helper'

class SuperAdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get super_admins_dashboard_url
    assert_response :success
  end

end
