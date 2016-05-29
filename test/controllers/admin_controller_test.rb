require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get subject" do
    get :subject
    assert_response :success
  end

end
