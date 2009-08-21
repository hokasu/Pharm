class PrescriptionsController < ApplicationController
  def index
    @prescriptions = Prescription.all
  end
  
  def show
    @prescription = Prescription.find(params[:id])
  end
  
  def new
    @prescription = Prescription.new
    @products = []
  end
  
  def create
    @prescription = Prescription.new(params[:prescription])
    if @prescription.save
      flash[:notice] = "Successfully created prescription."
      redirect_to @prescription
    else
      render :action => 'new'
    end
  end
  
  def edit
    @prescription = Prescription.find(params[:id])
  end
  
  def update
    @prescription = Prescription.find(params[:id])
    if @prescription.update_attributes(params[:prescription])
      flash[:notice] = "Successfully updated prescription."
      redirect_to @prescription
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @prescription = Prescription.find(params[:id])
    @prescription.destroy
    flash[:notice] = "Successfully destroyed prescription."
    redirect_to prescriptions_url
  end
end
