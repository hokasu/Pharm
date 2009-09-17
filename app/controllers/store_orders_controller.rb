class StoreOrdersController < ApplicationController
  before_filter :login_required
  def index
      @store = Store.find(params[:store_id])
      @ward = @store.ward
      @store_orders= @store.store_orders
      if @store_orders.empty?
        flash[:notice] = "There are nay any store orders."
        redirect_to ward_store_path(@ward)
      end
  end
  
   def show
    @store_order = StoreOrder.find(params[:id])
    @store_order_lines = @store_order.store_order_lines
  end 

  def new
    @store = Store.find(params[:store_id])
    if (@store_order = @store.replenish).nil?
      flash[:notice] = "No items need ordering"
      redirect_to @store.ward
    else @store_order.user = current_user
      @store_order.save
    end
  end
  
  def create
    @store_order = StoreOrder.new(params[:store_order])
    if @store_order.save
      flash[:notice] = "Successfully created store order."
      redirect_to @store_order
    else
      render :action => 'new'
    end
  end
  
  def edit
    @store_order = StoreOrder.find(params[:id])
  end
  
  def update
    @store_order = StoreOrder.find(params[:id])
    if @store_order.update_attributes(params[:store_order])
      flash[:notice] = "Successfully updated store order."
      redirect_to @store_order
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @store_order = StoreOrder.find(params[:id])
    @store_order.destroy
    flash[:notice] = "Successfully destroyed store order."
    redirect_to store_orders_url
  end
end
