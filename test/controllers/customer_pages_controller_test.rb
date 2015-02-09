require 'test_helper'

class CustomerPagesControllerTest < ActionController::TestCase
  test "should get customers" do
    get :customers
    assert_response :success
  end

  test "should get ecosystems" do
    get :ecosystems
    assert_response :success
  end

  test "should get customer_portal" do
    get :customer_portal
    assert_response :success
  end

end
