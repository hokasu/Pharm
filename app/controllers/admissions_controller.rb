class AdmissionsController < ApplicationController
  # GET /admissions
  # GET /admissions.xml
  def index
    @admissions = Admission.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admissions }
    end
  end

  # GET /admissions/1
  # GET /admissions/1.xml
  def show
    @admission = Admission.find(params[:id])
  #  @patient = Patient.find(params[:patient_id]) #rf

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admission }
    end
  end



  # GET /admissions/new
  # GET /admissions/new.xml
  def new
    @admission = Admission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admission }
    end
  end

  # GET /admissions/1/edit
  def edit
    @admission = Admission.find(params[:id])
  end

  # POST /admissions
  # POST /admissions.xml
  def create
    @admission = Admission.new(params[:admission])
    @admission.patient_id = params[:patient_id] #setting foreign key
    
    respond_to do |format|
      if @admission.save
        flash[:notice] = 'Admission was successfully created.'
        format.html { redirect_to(@admission) }
        format.xml  { render :xml => @admission, :status => :created, :location => @admission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admissions/1
  # PUT /admissions/1.xml
  def update
    @admission = Admission.find(params[:id])

    respond_to do |format|
      if @admission.update_attributes(params[:admission])
        flash[:notice] = 'Admission was successfully updated.'
        format.html { redirect_to(@admission) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admissions/1
  # DELETE /admissions/1.xml
  def destroy
    @admission = Admission.find(params[:id])
    @admission.destroy

    respond_to do |format|
      format.html { redirect_to(admissions_url) }
      format.xml  { head :ok }
    end
  end
end
