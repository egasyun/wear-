require 'test_helper'

class CordinatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cordinates_index_url
    assert_response :success
  end

  test "should get new" do
    get cordinates_new_url
    assert_response :success
  end

  test "should get show" do
    get cordinates_show_url
    assert_response :success
  end

  test "should get edit" do
    get cordinates_edit_url
    assert_response :success
  end

end
