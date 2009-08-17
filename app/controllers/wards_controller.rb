class WardsController < ApplicationController
  def index
    @wards = Ward.all
    respond_to do |format| 
      format.html 
      format.iphone { render :layout => false }
    end
   #TODO set @patients to all current patients 
    
   def no_back
     true
   end
  end


  def show
    @ward = Ward.find(params[:id])
    @patients = @ward.patients
    respond_to do |format| 
      format.html 
      format.iphone { render :layout => false }
    end

  end

  def new
    @ward = Ward.new
  end

  def edit
    @ward = Ward.find(params[:id])
    @pharmacist = @ward.pharmacist
    respond_to do |format| 
      format.html 
      format.iphone { render :layout => false }
    end
  end

  def create
    @ward = Ward.new(params[:ward])

    respond_to do |format|
      if @ward.save
        flash[:notice] = 'Ward was successfully created.'
        format.html { redirect_to(@ward) }
      format.iphone { redirect_to(@ward)  }
      else
        format.html { render :action => "new" }
        #put something useful here for iphone
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
