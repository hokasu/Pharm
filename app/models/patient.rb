class Patient < ActiveRecord::Base
  has_many :admissions
  validates_presence_of :patient_id
end
