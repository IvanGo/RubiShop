require 'test_helper'

class BowtypesControllerTest < ActionController::TestCase
  setup do
    @bowtype = bowtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bowtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bowtype" do
    assert_difference('Bowtype.count') do
      post :create, bowtype: { name: @bowtype.name }
    end

    assert_redirected_to bowtype_path(assigns(:bowtype))
  end

  test "should show bowtype" do
    get :show, id: @bowtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bowtype
    assert_response :success
  end

  test "should update bowtype" do
    patch :update, id: @bowtype, bowtype: { name: @bowtype.name }
    assert_redirected_to bowtype_path(assigns(:bowtype))
  end

  test "should destroy bowtype" do
    assert_difference('Bowtype.count', -1) do
      delete :destroy, id: @bowtype
    end

    assert_redirected_to bowtypes_path
  end
end
