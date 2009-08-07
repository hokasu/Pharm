class PatientsController < ApplicationController
  def index
    @ward = Ward.find(params[:ward_id])
    #@patients = Patient.all
    #admissions = @ward.admissions.current(:join => Patient.all)  #doesn't like this collection
    @patients = @ward.current_patients
  end

  def show
   @patient = Patient.find(params[:id])
   @admissions = @patient.admissions.all  #rf
   @admission = @patient.admissions.last  #rf
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
      redirect_to patients
    end

  end
end
