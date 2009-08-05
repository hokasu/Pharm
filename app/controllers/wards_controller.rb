class WardsController < ApplicationController
  # GET /wards
  # GET /wards.xml
  def index
    @wards = Ward.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wards }
    end
  end

  # GET /wards/1
  # GET /wards/1.xml
  def show
    @ward = Ward.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ward }
    end
  end

  # GET /wards/new
  # GET /wards/new.xml
  def new
    @ward = Ward.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ward }
    end
  end

  # GET /wards/1/edit
  def edit
    @ward = Ward.find(params[:id])
  end

  # POST /wards
  # POST /wards.xml
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

  # PUT /wards/1
  # PUT /wards/1.xml
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

  # DELETE /wards/1
  # DELETE /wards/1.xml
  def destroy
    @ward = Ward.find(params[:id])
    @ward.destroy

    respond_to do |format|
      format.html { redirect_to(wards_url) }
      format.xml  { head :ok }
    end
  end
end
