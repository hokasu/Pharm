class Pharmacist < User
  has_many :wards
  has_many :beds, :through => :ward

  def current_patients
    patients = Array.new
    ward.beds.each do |b|
      patients << b.admission.patient
    end
    return patients
  end

  def admissions
    beds.map {|bed| bed.admission}
  end
  
  def patients #displays all patients for this pharmacist, including discharged ones
    admissions.map {|admission| admission.patient}
  end
end
#tomoj: robert__: for the has_one ward in patient, you need like "has_one :current_admission, :conditions => ...however you tell that it's current..."
#[18:14] leachim6 joined the chat room.
#[18:14] tomoj: robert__: then has_one :ward, :through => :current_admission

























