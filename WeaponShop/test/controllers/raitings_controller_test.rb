require 'test_helper'

class RaitingsControllerTest < ActionController::TestCase
  setup do
    @raiting = raitings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raitings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raiting" do
    assert_difference('Raiting.count') do
      post :create, raiting: { bow_id: @raiting.bow_id, crossbow_id: @raiting.crossbow_id, raiting: @raiting.raiting }
    end

    assert_redirected_to raiting_path(assigns(:raiting))
  end

  test "should show raiting" do
    get :show, id: @raiting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raiting
    assert_response :success
  end

  test "should update raiting" do
    patch :update, id: @raiting, raiting: { bow_id: @raiting.bow_id, crossbow_id: @raiting.crossbow_id, raiting: @raiting.raiting }
    assert_redirected_to raiting_path(assigns(:raiting))
  end

  test "should destroy raiting" do
    assert_difference('Raiting.count', -1) do
      delete :destroy, id: @raiting
    end

    assert_redirected_to raitings_path
  end
end
