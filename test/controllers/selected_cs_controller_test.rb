require 'test_helper'

class SelectedCsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get selected_cs_search_url
    assert_response :success
  end

  test "should get result" do
    get selected_cs_result_url
    assert_response :success
  end

end
