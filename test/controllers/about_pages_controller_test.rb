require 'test_helper'

class AboutPagesControllerTest < ActionController::TestCase
  test "should get why_netrality" do
    get :why_netrality
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
