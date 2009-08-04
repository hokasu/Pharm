# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def date_uk ( d)
     d.to_date.strftime '%m/%d/%Y'
  end
end
