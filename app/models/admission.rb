class Admission < ActiveRecord::Base
  belongs_to :patient
  validates_presence_of :patient_id

def admdate_formatted
   admdate.to_date.strftime '%m/%d/%Y'
end
  
end
