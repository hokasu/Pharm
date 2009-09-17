class StoresController < ApplicationController
  before_filter :login_required
  def index
    @stores = Store.all
  end
  
  def show
    @ward = Ward.find(params[:ward_id])
    @store = @ward.store
    @product_stores = @store.product_stores
  end
  
  def new
    @store = Store.new
  end
  
  def create
    @store = Store.new(params[:store])
    if @store.save
      flash[:notice] = "Successfully created store."
      redirect_to @store
    else
      render :action => 'new'
    end
  end
  
  def edit
    @store = Store.find(params[:id])
  end
  
  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(params[:store])
      flash[:notice] = "Successfully updated store."
      redirect_to @store
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    flash[:notice] = "Successfully destroyed store."
    redirect_to stores_url
  end
end
