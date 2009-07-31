class Admission < ActiveRecord::Base
  belongs_to :patient
  
#  def ptname  #rf
#    Patient.find(@admission.patient_id)
#  end
end
