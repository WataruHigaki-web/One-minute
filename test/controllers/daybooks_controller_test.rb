require 'test_helper'

class DaybooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get daybooks_new_url
    assert_response :success
  end

  test "should get show" do
    get daybooks_show_url
    assert_response :success
  end

  test "should get index" do
    get daybooks_index_url
    assert_response :success
  end

end
