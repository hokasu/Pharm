class AdmnotesController < ApplicationController
  def index
    @admnotes = Admnote.all
  end

  def create
    @admnote = Admnote.new(params[:admnote])

    respond_to do |format|
      if @admnote.save
        flash[:notice] = 'Admission was successfully created.'
        redirect_to(@admnote) 
      else
        #???TODO
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
