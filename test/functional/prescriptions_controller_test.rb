require 'test_helper'

class PrescriptionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Prescription.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Prescription.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Prescription.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to prescription_url(assigns(:prescription))
  end
  
  def test_edit
    get :edit, :id => Prescription.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Prescription.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Prescription.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Prescription.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Prescription.first
    assert_redirected_to prescription_url(assigns(:prescription))
  end
  
  def test_destroy
    prescription = Prescription.first
    delete :destroy, :id => prescription
    assert_redirected_to prescriptions_url
    assert !Prescription.exists?(prescription.id)
  end
end
