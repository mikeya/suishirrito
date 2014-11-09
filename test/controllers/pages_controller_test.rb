require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get food" do
    get :food
    assert_response :success
  end

  test "should get catering" do
    get :catering
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get jobs" do
    get :jobs
    assert_response :success
  end

end
