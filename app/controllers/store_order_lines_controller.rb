class StoreOrderLinesController < ApplicationController
  before_filter :login_required
  def index
    @store_order_lines = StoreOrderLine.all
  end
  
  def show
    @store_order_line = StoreOrderLine.find(params[:id])
  end
  
  def new
    @store_order_line = StoreOrderLine.new
  end
  
  def create
    @store_order_line = StoreOrderLine.new(params[:store_order_line])
    if @store_order_line.save
      flash[:notice] = "Successfully created store order line."
      redirect_to @store_order_line
    else
      render :action => 'new'
    end
  end
  
  def edit
    @store_order_line = StoreOrderLine.find(params[:id])
  end
  
  def update
    @store_order_line = StoreOrderLine.find(params[:id])
    @store = product_store.store
    if @store_order_line.update_attributes(params[:store_order_line])
      flash[:notice] = "Successfully updated store order line."
      redirect_to @store
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @store_order_line = StoreOrderLine.find(params[:id])
    @store_order = @store_order_line.store_order
    @store_order_line.destroy
    flash[:notice] = "Successfully destroyed store order line."
    redirect_to @store_order
  end
end
