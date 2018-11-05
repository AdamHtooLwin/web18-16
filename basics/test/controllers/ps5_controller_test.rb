require 'test_helper'

class Ps5ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ps5_index_url
    assert_response :success
  end

  test "should get documentation" do
    get ps5_documentation_url
    assert_response :success
  end

  test "should get drone_registration" do
    get ps5_drone_registration_url
    assert_response :success
  end

end
