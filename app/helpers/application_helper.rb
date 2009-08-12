# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
def iphone_user_agent?
  request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
end
  
  def date_uk ( d)
     d.to_date.strftime '%m/%d/%Y'
  end

  def name ( o )
   o.firstname + " " + o.surname
  end 

  def initals_name (o)
    first_initial = o.firstname[0,1]
      if o.middlename.length>0
        second_initial = o.middlename[0,1]
      else
        second_initial = ""
      end
      return first_initial + second_initial + surname
  end

end
