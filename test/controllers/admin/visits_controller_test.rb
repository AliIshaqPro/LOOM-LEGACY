require "test_helper"

class Admin::VisitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_visits_index_url
    assert_response :success
  end
end
