require 'test_helper'

class AdmissionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admission" do
    assert_difference('Admission.count') do
      post :create, :admission => { }
    end

    assert_redirected_to admission_path(assigns(:admission))
  end

  test "should show admission" do
    get :show, :id => admissions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => admissions(:one).to_param
    assert_response :success
  end

  test "should update admission" do
    put :update, :id => admissions(:one).to_param, :admission => { }
    assert_redirected_to admission_path(assigns(:admission))
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete :destroy, :id => admissions(:one).to_param
    end

    assert_redirected_to admissions_path
  end
end
