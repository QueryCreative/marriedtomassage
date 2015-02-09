require 'test_helper'

class LocationPagesControllerTest < ActionController::TestCase
  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get chicago" do
    get :chicago
    assert_response :success
  end

  test "should get houston" do
    get :houston
    assert_response :success
  end

  test "should get kansas_city" do
    get :kansas_city
    assert_response :success
  end

  test "should get new_york" do
    get :new_york
    assert_response :success
  end

  test "should get philadelphia" do
    get :philadelphia
    assert_response :success
  end

end
