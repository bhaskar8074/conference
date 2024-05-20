require "test_helper"

class ConferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conferences_index_url
    assert_response :success
  end

  test "should get show" do
    get conferences_show_url
    assert_response :success
  end

  test "should get new" do
    get conferences_new_url
    assert_response :success
  end

  test "should get create" do
    get conferences_create_url
    assert_response :success
  end

  test "should get edit" do
    get conferences_edit_url
    assert_response :success
  end

  test "should get update" do
    get conferences_update_url
    assert_response :success
  end

  test "should get destroy" do
    get conferences_destroy_url
    assert_response :success
  end
end
