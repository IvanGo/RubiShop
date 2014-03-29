require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get bows" do
    get :bows
    assert_response :success
  end

  test "should get crossbows" do
    get :crossbows
    assert_response :success
  end

  test "should get bow" do
    get :bow
    assert_response :success
  end

  test "should get crossbow" do
    get :crossbow
    assert_response :success
  end

  test "should get cart" do
    get :cart
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

end
