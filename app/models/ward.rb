class Ward < ActiveRecord::Base
  belongs_to :pharmacist
  has_many :beds
  has_many :admissions, :through => :beds
  #has_many :patients, :through => :admissions


  def current_patients
    patients = Array.new
    beds.each do |b|
      patients << b.admissions.current.last.patient #for some reason .current is returning array
      end
    return patients
  end

  def patients
    admissions.map {|admission| admission.patient}
  end

end
