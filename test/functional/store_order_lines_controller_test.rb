require 'test_helper'

class StoreOrderLinesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => StoreOrderLine.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    StoreOrderLine.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    StoreOrderLine.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to store_order_line_url(assigns(:store_order_line))
  end
  
  def test_edit
    get :edit, :id => StoreOrderLine.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    StoreOrderLine.any_instance.stubs(:valid?).returns(false)
    put :update, :id => StoreOrderLine.first
    assert_template 'edit'
  end
  
  def test_update_valid
    StoreOrderLine.any_instance.stubs(:valid?).returns(true)
    put :update, :id => StoreOrderLine.first
    assert_redirected_to store_order_line_url(assigns(:store_order_line))
  end
  
  def test_destroy
    store_order_line = StoreOrderLine.first
    delete :destroy, :id => store_order_line
    assert_redirected_to store_order_lines_url
    assert !StoreOrderLine.exists?(store_order_line.id)
  end
end
