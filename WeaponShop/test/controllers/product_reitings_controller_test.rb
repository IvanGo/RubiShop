require 'test_helper'

class ProductReitingsControllerTest < ActionController::TestCase
  setup do
    @product_reiting = product_reitings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_reitings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_reiting" do
    assert_difference('ProductReiting.count') do
      post :create, product_reiting: { bow_id: @product_reiting.bow_id, crossbow_id: @product_reiting.crossbow_id, raiting: @product_reiting.raiting, user_id: @product_reiting.user_id }
    end

    assert_redirected_to product_reiting_path(assigns(:product_reiting))
  end

  test "should show product_reiting" do
    get :show, id: @product_reiting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_reiting
    assert_response :success
  end

  test "should update product_reiting" do
    patch :update, id: @product_reiting, product_reiting: { bow_id: @product_reiting.bow_id, crossbow_id: @product_reiting.crossbow_id, raiting: @product_reiting.raiting, user_id: @product_reiting.user_id }
    assert_redirected_to product_reiting_path(assigns(:product_reiting))
  end

  test "should destroy product_reiting" do
    assert_difference('ProductReiting.count', -1) do
      delete :destroy, id: @product_reiting
    end

    assert_redirected_to product_reitings_path
  end
end
