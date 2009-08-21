class Prescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :product
  belongs_to :dose
  named_scope :current, :conditions => ["start <  NOW() AND  end > NOW()"] 

end
