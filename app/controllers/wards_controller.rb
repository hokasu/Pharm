class WardsController < ApplicationController
  def index
    @wards = Ward.all
  end

  def show
    @ward = Ward.find(params[:id])
  end

  def new
    @ward = Ward.new
  end

  def edit
    @ward = Ward.find(params[:id])
    @pharmacist = @ward.pharmacist
  end

  def create
    @ward = Ward.new(params[:ward])

    respond_to do |format|
      if @ward.save
        flash[:notice] = 'Ward was successfully created.'
        format.html { redirect_to(@ward) }
        format.xml  { render :xml => @ward, :status => :created, :location => @ward }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ward.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @ward = Ward.find(params[:id])

    respond_to do |format|
      if @ward.update_attributes(params[:ward])
        flash[:notice] = 'Ward was successfully updated.'
        format.html { redirect_to(@ward) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ward.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @ward = Ward.find(params[:id])
    @ward.destroy
  end
end
