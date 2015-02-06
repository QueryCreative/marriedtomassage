require 'test_helper'

class MainPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get customers" do
    get :customers
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
