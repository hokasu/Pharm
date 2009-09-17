class ProductStoresController < ApplicationController
  def index
    @product_stores = ProductStore.all
  end
  
  def show
    @product_store = ProductStore.find(params[:id])
  end
  
  def new
    @product_store = ProductStore.new
  end
  
  def create
    @product_store = ProductStore.new(params[:product_store])
    if @product_store.save
      flash[:notice] = "Successfully created product store."
      redirect_to @product_store
    else
      render :action => 'new'
    end
  end
  
  def edit
    @product_store = ProductStore.find(params[:id])
  end
  
  def update
    @product_store = ProductStore.find(params[:id])
    if @product_store.update_attributes(params[:product_store])
      flash[:notice] = "Successfully updated product store."
      redirect_to ward_store_path(@product_store.store.ward)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @product_store = ProductStore.find(params[:id])
    @product_store.destroy
    flash[:notice] = "Successfully destroyed product store."
    redirect_to product_stores_url
  end
end
