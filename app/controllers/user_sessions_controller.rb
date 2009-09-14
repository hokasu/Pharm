class UserSessionsController < ApplicationController
  def new
    if current_user
      redirect_to(wards_url) and return
    end
    @user_session = UserSession.new
    respond_to do |format| 
      format.html 
      format.iphone
    end
  end 
    
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in. You are a " + current_user.class.title
      if current_user.class.to_s == "Pharmacist"
        redirect_to(wards_url)
      end
      if current_user.class.to_s == "Dispensary"
        redirect_to(discharges_url)
      end
    else
      #respond_to do |format| 
      #  format.html # index.html.erb 
      #  format.iphone # index.iphone.erb 
      #end
      render :action => 'new'
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."

    redirect_to root_url
  end
end
