class Pharmacist < ActiveRecord::Base
  has_one :ward
  has_many :beds, :through => :ward
  has_many :admissions, :through => :beds
  has_many :patients, :through => :admissions

  def current_patients
    patients = Array.new
    ward.beds.each do |b|
      patients << b.admission.patient
    end
    return patients
  end
end
