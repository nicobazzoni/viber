require "test_helper"

class MembershipControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get membership_index_url
    assert_response :success
  end

  test "should get new" do
    get membership_new_url
    assert_response :success
  end

  test "should get edit" do
    get membership_edit_url
    assert_response :success
  end

  test "should get show" do
    get membership_show_url
    assert_response :success
  end
end
