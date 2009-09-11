# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  #protect_from_forgery #:only => [:create, :update, :destroy] 
  # See ActionController::RequestForgeryProtection for details

  before_filter :adjust_format_for_iphone 
  helper_method :iphone_user_agent? 

 def login_required
    unless current_user
      flash[:notice] = "You must first log in before accessing this page."
      redirect_to login_url
    end
  end 

 def admin_required
   unless current_user.admin?
     flash[:notice] = "You need to be an administrator to access this page."
     redirect_to wards_url
   end
 end

  protected 
  def adjust_format_for_iphone
    request.format = :iphone if iphone_user_agent?
  end 
  
  def iphone_user_agent? 
    request.env["HTTP_USER_AGENT"] && 
    request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/] 
  end 


  helper_method :current_user

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
