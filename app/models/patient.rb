class Patient < ActiveRecord::Base
  has_many :admissions
  has_many :admnotes
  validates_presence_of :patient_id
  #lastadmission = self.admissions.last #why doesn't this work? because its a class method

  def fullname
    firstname + " " + middlename + " " + surname
  end

  def has_allergies?
    allergies.size>0
  end
  

  def has_sensitivities?
    sensitivities.size>0
  end

  def inpatient?
    DateTime.now < self.admissions.last.depdate && DateTime.now > self.admissions.last.admdate
  end

end
