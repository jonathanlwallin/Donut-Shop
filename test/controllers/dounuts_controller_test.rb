require 'test_helper'

class DounutsControllerTest < ActionController::TestCase
  setup do
    @dounut = dounuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dounuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dounut" do
    assert_difference('Dounut.count') do
      post :create, dounut: { cost: @dounut.cost, image: @dounut.image, name: @dounut.name, topping: @dounut.topping, topping: @dounut.topping }
    end

    assert_redirected_to dounut_path(assigns(:dounut))
  end

  test "should show dounut" do
    get :show, id: @dounut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dounut
    assert_response :success
  end

  test "should update dounut" do
    patch :update, id: @dounut, dounut: { cost: @dounut.cost, image: @dounut.image, name: @dounut.name, topping: @dounut.topping, topping: @dounut.topping }
    assert_redirected_to dounut_path(assigns(:dounut))
  end

  test "should destroy dounut" do
    assert_difference('Dounut.count', -1) do
      delete :destroy, id: @dounut
    end

    assert_redirected_to dounuts_path
  end
end
