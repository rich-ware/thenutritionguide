require 'test_helper'

class FoodDesControllerTest < ActionController::TestCase
  setup do
    @food_de = food_des(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_des)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_de" do
    assert_difference('FoodDe.count') do
      post :create, food_de: {  }
    end

    assert_redirected_to food_de_path(assigns(:food_de))
  end

  test "should show food_de" do
    get :show, id: @food_de
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_de
    assert_response :success
  end

  test "should update food_de" do
    put :update, id: @food_de, food_de: {  }
    assert_redirected_to food_de_path(assigns(:food_de))
  end

  test "should destroy food_de" do
    assert_difference('FoodDe.count', -1) do
      delete :destroy, id: @food_de
    end

    assert_redirected_to food_des_path
  end
end
