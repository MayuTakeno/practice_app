require "test_helper"

class Public::CusromersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cusromers_index_url
    assert_response :success
  end

  test "should get show" do
    get public_cusromers_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_cusromers_edit_url
    assert_response :success
  end
end
