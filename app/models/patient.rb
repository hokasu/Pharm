class Patient < ActiveRecord::Base
  has_many :admissions
  has_one :ward, :through => :admissions
  has_many :admnotes, :through => :admissions
  
  validates_presence_of  :firstname, :surname, :phn
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

  def current_admission
    #admissions.each  {|a| if a.admdate < DateTime.now && a.depdate > DateTime.now
    #  then return a else return nil end }

    admissions.find(:all, :conditions => ["admdate <  NOW() AND depdate > NOW()"]).last
  end

  def current_ward
    if current_admission!=nil
      then return current_admission.ward
    else
      return nil
    end
  end


  def inpatient?
    return current_admission!=nil
  end

  def has_admissions?
    admissions.size > 0 
  end
  
  def has_currentnotes?
    admissions.last.admnotes.size > 0
  end


end
