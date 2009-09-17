require 'test_helper'

class ProductStoresControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => ProductStore.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    ProductStore.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    ProductStore.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to product_store_url(assigns(:product_store))
  end
  
  def test_edit
    get :edit, :id => ProductStore.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    ProductStore.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ProductStore.first
    assert_template 'edit'
  end
  
  def test_update_valid
    ProductStore.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ProductStore.first
    assert_redirected_to product_store_url(assigns(:product_store))
  end
  
  def test_destroy
    product_store = ProductStore.first
    delete :destroy, :id => product_store
    assert_redirected_to product_stores_url
    assert !ProductStore.exists?(product_store.id)
  end
end
