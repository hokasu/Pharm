class PatientIndication < ActiveRecord::Base
  belongs_to :patient
  belongs_to :indication
end
