require 'test_helper'

class MmatchingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mmatching_index_url
    assert_response :success
  end

  test "should get new" do
    get mmatching_new_url
    assert_response :success
  end

  test "should get show" do
    get mmatching_show_url
    assert_response :success
  end

  test "should get edit" do
    get mmatching_edit_url
    assert_response :success
  end

end
