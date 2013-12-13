require 'test_helper'

class PreventionsControllerTest < ActionController::TestCase
  setup do
    @prevention = preventions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preventions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prevention" do
    assert_difference('Prevention.count') do
      post :create, prevention: { name: @prevention.name }
    end

    assert_redirected_to prevention_path(assigns(:prevention))
  end

  test "should show prevention" do
    get :show, id: @prevention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prevention
    assert_response :success
  end

  test "should update prevention" do
    patch :update, id: @prevention, prevention: { name: @prevention.name }
    assert_redirected_to prevention_path(assigns(:prevention))
  end

  test "should destroy prevention" do
    assert_difference('Prevention.count', -1) do
      delete :destroy, id: @prevention
    end

    assert_redirected_to preventions_path
  end
end
