require 'test_helper'

class Ps4ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ps4_index_url
    assert_response :success
  end

  test "should get documentation" do
    get ps4_documentation_url
    assert_response :success
  end

end
