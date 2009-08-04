class Admission < ActiveRecord::Base
  belongs_to :patient
  validates_presence_of :patient_id

def admdate_formatted
   admdate.to_date.strftime '%m/%d/%Y'
end
  
def self.date_formatted ( d)
   d.to_date.strftime '%m/%d/%Y'
end
#  def ptname  #rf
#    Patient.find(@admission.patient_id)
#  end
end
