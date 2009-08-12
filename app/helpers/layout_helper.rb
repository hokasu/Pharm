module LayoutHelper
  def title(page_title, show_title = true)
    @content_for_title = page_title.to_s #content_for is helper method for storing markup
    @show_title = show_title
  end
  
  def show_title?
    @show_title
  end
end

