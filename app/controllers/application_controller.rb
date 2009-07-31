# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #before_filter :adjust_format_for_iphone 
  #helper_method :iphone_user_agent? 
  
#  protected 
#  def adjust_format_for_iphone 
#    # Detect from iPhone user-agent 
#   # request.format = :iphone if iphone_user_agent? 
#  end 
#  
#  # Request from an iPhone or iPod touch? 
#  # (Mobile Safari user agent) 
#  def iphone_user_agent? 
#    request.env["HTTP_USER_AGENT"] && 
#    request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/] 
#  end 
  

   
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
