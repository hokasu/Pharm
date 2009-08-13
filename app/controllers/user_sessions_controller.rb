class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
    respond_to do |format| 
      format.html # index.html.erb 
      format.iphone # index.iphone.erb 
      format.xml { render :xml => @lists } 
    end
  end 
    
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      respond_to do |format| 
        format.html # index.html.erb 
        format.iphone # index.iphone.erb 
        format.xml { render :xml => @lists } 
      end
      redirect_to wards_url
    else
      respond_to do |format| 
        format.html # index.html.erb 
        format.iphone # index.iphone.erb 
        format.xml { render :xml => @lists } 
      end
      render :action => 'new'
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    respond_to do |format| 
      format.html # index.html.erb 
      format.iphone # index.iphone.erb 
      format.xml { render :xml => @lists } 
    end
    redirect_to root_url
  end
end
