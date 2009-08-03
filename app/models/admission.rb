class Admission < ActiveRecord::Base
  belongs_to :patient
  validates_presence_of :patient_id
#  def ptname  #rf
#    Patient.find(@admission.patient_id)
#  end
end
