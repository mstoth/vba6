require "test_helper"

class AgentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agent_index_url
    assert_response :success
  end

  test "should not get home" do
    get agent_home_url
    assert_response :redirect
  end
end
