# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
def iphone_user_agent?
  request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
end
  
  def date_uk(d)
    d.to_date.strftime '%m/%d/%Y'
  end

  def name(o)
   o.firstname + " " + o.surname
  end 

  def initials_name(o)
    o.firstname[0,1] + ". " + o.surname
  end


end
