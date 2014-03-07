require 'test_helper'

class CrossbowsControllerTest < ActionController::TestCase
  setup do
    @crossbow = crossbows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crossbows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crossbow" do
    assert_difference('Crossbow.count') do
      post :create, crossbow: { arrow_start_speed: @crossbow.arrow_start_speed, bolt_lenght: @crossbow.bolt_lenght, crossbowtype_id: @crossbow.crossbowtype_id, description: @crossbow.description, dimensions: @crossbow.dimensions, name: @crossbow.name, producer: @crossbow.producer, shoulders_lenght: @crossbow.shoulders_lenght, stroke_bowstring: @crossbow.stroke_bowstring, tension_force: @crossbow.tension_force, weight: @crossbow.weight }
    end

    assert_redirected_to crossbow_path(assigns(:crossbow))
  end

  test "should show crossbow" do
    get :show, id: @crossbow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crossbow
    assert_response :success
  end

  test "should update crossbow" do
    patch :update, id: @crossbow, crossbow: { arrow_start_speed: @crossbow.arrow_start_speed, bolt_lenght: @crossbow.bolt_lenght, crossbowtype_id: @crossbow.crossbowtype_id, description: @crossbow.description, dimensions: @crossbow.dimensions, name: @crossbow.name, producer: @crossbow.producer, shoulders_lenght: @crossbow.shoulders_lenght, stroke_bowstring: @crossbow.stroke_bowstring, tension_force: @crossbow.tension_force, weight: @crossbow.weight }
    assert_redirected_to crossbow_path(assigns(:crossbow))
  end

  test "should destroy crossbow" do
    assert_difference('Crossbow.count', -1) do
      delete :destroy, id: @crossbow
    end

    assert_redirected_to crossbows_path
  end
end
