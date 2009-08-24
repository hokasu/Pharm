class Dose < ActiveRecord::Base
  has_many :products, :through => :product_doses


  def frequency_description
    description = quantity.to_s + " "
    
    description = description + case frequency
        when 1: "once"
        when 2: "twice"
        when 3: "three"
        when 4: "four"
        when 5: "five"
        when 6: "six"
        when 8: "eight"
        else      frequency.to_s
      end

      description = description + " " + case frequency
      when 3..50: "times"
      else ""
      end

      description = description + "a " + period
      return description
   end
end
