class AdmissionsController < ApplicationController
  def index
      @patient = Patient.find(params[:patient_id])
      @admissions = @patient.admissions.all
  end

  def show
    @admission = Admission.find(params[:id])
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @admission = @patient.admissions.new  #p
    #find_by_name
  end

  def edit
    @admission = Admission.find(params[:id])
  end

  def create
    @admission = Admission.new(params[:admission])
    @admission.patient = Patient.find(params[:patient_id]) #setting foreign key
    
    respond_to do |format|
      if @admission.save
        flash[:notice] = 'Admission was successfully created.'
        format.html { redirect_to(@admission) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @admission = Admission.find(params[:id])

    respond_to do |format|
      if @admission.update_attributes(params[:admission])
        flash[:notice] = 'Admission was successfully updated.'
        format.html { redirect_to(@admission) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @admission = Admission.find(params[:id])
    @admission.destroy

    respond_to do |format|
      format.html { redirect_to(admissions_url) }
    end
  end
end
