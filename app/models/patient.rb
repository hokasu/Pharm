class Patient < ActiveRecord::Base
  has_many :admissions
  has_many :prescriptions
  has_many :admnotes, :through => :admissions
  define_index do
    indexes [firstname, surname], :as => :patient_name #need to combine first and second names for indexing
    indexes phn
    #indexes Ward.find(Bed.find(admissions.current).last.ward_id)
    indexes admnotes.text, :as => :admnote_text
    indexes admnotes.username, :as => :author_name
  end

  validates_presence_of  :firstname, :surname, :phn

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
