require 'test_helper'

class PostPagesControllerTest < ActionController::TestCase
  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

end
