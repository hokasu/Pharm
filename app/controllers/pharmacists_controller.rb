class PharmacistsController < ApplicationController
  # GET /pharmacists
  # GET /pharmacists.xml
  def index
    @pharmacists = Pharmacist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pharmacists }
    end
  end

  # GET /pharmacists/1
  # GET /pharmacists/1.xml
  def show
    @pharmacist = Pharmacist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pharmacist }
    end
  end

  # GET /pharmacists/new
  # GET /pharmacists/new.xml
  def new
    @pharmacist = Pharmacist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pharmacist }
    end
  end

  # GET /pharmacists/1/edit
  def edit
    @pharmacist = Pharmacist.find(params[:id])
  end

  # POST /pharmacists
  # POST /pharmacists.xml
  def create
    @pharmacist = Pharmacist.new(params[:pharmacist])

    respond_to do |format|
      if @pharmacist.save
        flash[:notice] = 'Pharmacist was successfully created.'
        format.html { redirect_to(@pharmacist) }
        format.xml  { render :xml => @pharmacist, :status => :created, :location => @pharmacist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pharmacist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pharmacists/1
  # PUT /pharmacists/1.xml
  def update
    @pharmacist = Pharmacist.find(params[:id])

    respond_to do |format|
      if @pharmacist.update_attributes(params[:pharmacist])
        flash[:notice] = 'Pharmacist was successfully updated.'
        format.html { redirect_to(@pharmacist) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pharmacist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmacists/1
  # DELETE /pharmacists/1.xml
  def destroy
    @pharmacist = Pharmacist.find(params[:id])
    @pharmacist.destroy

    respond_to do |format|
      format.html { redirect_to(pharmacists_url) }
      format.xml  { head :ok }
    end
  end
end
