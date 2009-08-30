class Ward < ActiveRecord::Base
  belongs_to :pharmacist
  has_one :store
  has_many :beds
  has_many :admissions, :through => :beds

  def current_patients
    patients = Array.new
    admissions.current.each do |a|
      patients << a.patient 
    end
    return patients
  end

  def patients
    admissions.map {|admission| admission.patient}
  end

end
