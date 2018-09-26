require 'test_helper'

class Ps1ControllerTest < ActionDispatch::IntegrationTest
  test "should get divide_by_zero_exception" do
    get ps1_divide_by_zero_exception_url
    assert_response :success
  end

  test "should get news" do
    get ps1_news_url
    assert_response :success
  end

end
