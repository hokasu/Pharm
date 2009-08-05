require 'test_helper'

class PharmacistsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pharmacists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pharmacist" do
    assert_difference('Pharmacist.count') do
      post :create, :pharmacist => { }
    end

    assert_redirected_to pharmacist_path(assigns(:pharmacist))
  end

  test "should show pharmacist" do
    get :show, :id => pharmacists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pharmacists(:one).to_param
    assert_response :success
  end

  test "should update pharmacist" do
    put :update, :id => pharmacists(:one).to_param, :pharmacist => { }
    assert_redirected_to pharmacist_path(assigns(:pharmacist))
  end

  test "should destroy pharmacist" do
    assert_difference('Pharmacist.count', -1) do
      delete :destroy, :id => pharmacists(:one).to_param
    end

    assert_redirected_to pharmacists_path
  end
end
