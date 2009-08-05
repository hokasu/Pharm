class AdmnotesController < ApplicationController
  def index
    @admission = Admission.find(params[:admission_id])
    @admnotes = @admission.admnotes.all
  end

  def new
    @admission = Admission.find(params[:admission_id]) #rf
    @admnote = @admission.admnotes.new
  end

  def create
    @admnote = Admnote.new(params[:admnote])
    @admnote.admission = Admission.find(params[:admission_id]) #setting foreign key
   

    respond_to do |format|
      if @admnote.save
        flash[:notice] = 'Admission was successfully created.'
        redirect_to admission_admnotes_path (@admnote.admission)
      else
        #???TODO
      end
    end
  end
    
  def update
    @admnote = Admnote.find(params[:id])

    respond_to do |format|
      if @admnote.update_attributes(params[:admnote])
        flash[:notice] = 'Admission note was successfully updated.'
        redirect_to(@admnote) 
      else
        #???
      end
    end
  end

  def destroy
    @admnote = Admnote.find(params[:id])
    @admnote.destroy

    respond_to do |format|
      redirect_to(admnote_url)
    end
  end

end
