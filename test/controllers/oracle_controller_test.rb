require "test_helper"

class OracleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oracle_index_url
    assert_response :success
  end

  test "should get show" do
    get oracle_show_url
    assert_response :success
  end
end
