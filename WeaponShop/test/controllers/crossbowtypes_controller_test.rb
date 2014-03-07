require 'test_helper'

class CrossbowtypesControllerTest < ActionController::TestCase
  setup do
    @crossbowtype = crossbowtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crossbowtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crossbowtype" do
    assert_difference('Crossbowtype.count') do
      post :create, crossbowtype: { name: @crossbowtype.name }
    end

    assert_redirected_to crossbowtype_path(assigns(:crossbowtype))
  end

  test "should show crossbowtype" do
    get :show, id: @crossbowtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crossbowtype
    assert_response :success
  end

  test "should update crossbowtype" do
    patch :update, id: @crossbowtype, crossbowtype: { name: @crossbowtype.name }
    assert_redirected_to crossbowtype_path(assigns(:crossbowtype))
  end

  test "should destroy crossbowtype" do
    assert_difference('Crossbowtype.count', -1) do
      delete :destroy, id: @crossbowtype
    end

    assert_redirected_to crossbowtypes_path
  end
end
