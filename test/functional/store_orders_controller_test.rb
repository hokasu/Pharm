require 'test_helper'

class StoreOrdersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => StoreOrder.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    StoreOrder.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    StoreOrder.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to store_order_url(assigns(:store_order))
  end
  
  def test_edit
    get :edit, :id => StoreOrder.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    StoreOrder.any_instance.stubs(:valid?).returns(false)
    put :update, :id => StoreOrder.first
    assert_template 'edit'
  end
  
  def test_update_valid
    StoreOrder.any_instance.stubs(:valid?).returns(true)
    put :update, :id => StoreOrder.first
    assert_redirected_to store_order_url(assigns(:store_order))
  end
  
  def test_destroy
    store_order = StoreOrder.first
    delete :destroy, :id => store_order
    assert_redirected_to store_orders_url
    assert !StoreOrder.exists?(store_order.id)
  end
end
