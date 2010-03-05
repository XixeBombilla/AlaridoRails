require 'test_helper'

class GeneralsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general" do
    assert_difference('General.count') do
      post :create, :general => { }
    end

    assert_redirected_to general_path(assigns(:general))
  end

  test "should show general" do
    get :show, :id => generals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => generals(:one).to_param
    assert_response :success
  end

  test "should update general" do
    put :update, :id => generals(:one).to_param, :general => { }
    assert_redirected_to general_path(assigns(:general))
  end

  test "should destroy general" do
    assert_difference('General.count', -1) do
      delete :destroy, :id => generals(:one).to_param
    end

    assert_redirected_to generals_path
  end
end
