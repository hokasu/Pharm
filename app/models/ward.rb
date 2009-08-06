class Ward < ActiveRecord::Base
  belongs_to :pharmacist
  has_many :beds
  has_many :admissions, :through => :beds
  has_many :patients, :through => :admissions


  def current_patients
    patients = Array.new
    beds.each do |b|
      patients << b.admission.patient
      end
    return patients
  end
end
