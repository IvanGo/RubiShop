require 'test_helper'

class BowsControllerTest < ActionController::TestCase
  setup do
    @bow = bows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bow" do
    assert_difference('Bow.count') do
      post :create, bow: { arrow_start_speed: @bow.arrow_start_speed, bow_base: @bow.bow_base, bowtype_id: @bow.bowtype_id, description: @bow.description, lenght: @bow.lenght, name: @bow.name, producer: @bow.producer, tension_force: @bow.tension_force, tensionlenght: @bow.tensionlenght, weight: @bow.weight }
    end

    assert_redirected_to bow_path(assigns(:bow))
  end

  test "should show bow" do
    get :show, id: @bow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bow
    assert_response :success
  end

  test "should update bow" do
    patch :update, id: @bow, bow: { arrow_start_speed: @bow.arrow_start_speed, bow_base: @bow.bow_base, bowtype_id: @bow.bowtype_id, description: @bow.description, lenght: @bow.lenght, name: @bow.name, producer: @bow.producer, tension_force: @bow.tension_force, tensionlenght: @bow.tensionlenght, weight: @bow.weight }
    assert_redirected_to bow_path(assigns(:bow))
  end

  test "should destroy bow" do
    assert_difference('Bow.count', -1) do
      delete :destroy, id: @bow
    end

    assert_redirected_to bows_path
  end
end
