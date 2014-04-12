require 'test_helper'

class ViewscountsControllerTest < ActionController::TestCase
  setup do
    @viewscount = viewscounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viewscounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viewscount" do
    assert_difference('Viewscount.count') do
      post :create, viewscount: { bow_id: @viewscount.bow_id, count: @viewscount.count, crossbow_id: @viewscount.crossbow_id }
    end

    assert_redirected_to viewscount_path(assigns(:viewscount))
  end

  test "should show viewscount" do
    get :show, id: @viewscount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viewscount
    assert_response :success
  end

  test "should update viewscount" do
    patch :update, id: @viewscount, viewscount: { bow_id: @viewscount.bow_id, count: @viewscount.count, crossbow_id: @viewscount.crossbow_id }
    assert_redirected_to viewscount_path(assigns(:viewscount))
  end

  test "should destroy viewscount" do
    assert_difference('Viewscount.count', -1) do
      delete :destroy, id: @viewscount
    end

    assert_redirected_to viewscounts_path
  end
end
