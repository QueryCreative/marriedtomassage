require 'test_helper'

class AboutPagesControllerTest < ActionController::TestCase
  test "should get why-netrality" do
    get :why-netrality
    assert_response :success
  end

  test "should get leadership" do
    get :leadership
    assert_response :success
  end

  test "should get colocation" do
    get :colocation
    assert_response :success
  end

end
