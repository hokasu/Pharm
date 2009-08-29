class User < ActiveRecord::Base
  acts_as_authentic
  #named_scope :pharmacist, :conditions => ["type == 'pharmacist'"] 
end
