require 'test_helper'

class WardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ward" do
    assert_difference('Ward.count') do
      post :create, :ward => { }
    end

    assert_redirected_to ward_path(assigns(:ward))
  end

  test "should show ward" do
    get :show, :id => wards(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wards(:one).to_param
    assert_response :success
  end

  test "should update ward" do
    put :update, :id => wards(:one).to_param, :ward => { }
    assert_redirected_to ward_path(assigns(:ward))
  end

  test "should destroy ward" do
    assert_difference('Ward.count', -1) do
      delete :destroy, :id => wards(:one).to_param
    end

    assert_redirected_to wards_path
  end
end
