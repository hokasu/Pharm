class PatientsController < ApplicationController

  def index
    if params[:ward_id]
      then 
    @ward = Ward.find(params[:ward_id])
    @patients = @ward.current_patients
    else
      allpatients
    end
  end

  def allpatients
    @patients = Patient.all
  end

  def show
   @patient = Patient.find(params[:id])
   @admissions = @patient.admissions.all  #rf
   @admission = @patient.admissions.last  #rf
   @ward = @admission.ward
  end

  def new
    @patient = Patient.new
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(params[:patient])

    respond_to do |format|
      if @patient.save
        flash[:notice] = 'Patient was successfully created.'
        format.html { redirect_to(@patient) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @patient = Patient.find(params[:id])

    respond_to do |format|
      if @patient.update_attributes(params[:patient])
        flash[:notice] = 'Patient was successfully updated.'
        format.html { redirect_to(@patient) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    if @patient.destroy
      redirect_to wards
    end

  end
end
