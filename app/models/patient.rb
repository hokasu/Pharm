class Patient < ActiveRecord::Base
  has_many :admissions
  has_many :prescriptions
  has_many :prodcuts, :through => :prescriptions
  has_many :admnotes, :through => :admissions
  has_one :level

  define_index do
    indexes [firstname, surname], :as => :patient_name #need to combine first and second names for indexing
    indexes phn
    #indexes Ward.find(Bed.find(admissions.current).last.ward_id)
    indexes admnotes.text, :as => :admnote_text
    indexes admnotes.username, :as => :author_name
  end

  validates_presence_of  :firstname, :surname, :phn

  def check_allergies
    reg = Regexp.new('[a-z]{3,}')
    a = allergies.scan(reg)
    result = a.to_set & current_agents_categories_names #returns intersection of allergies and current agents
    if result.size == 0
      return nil
    else return result
    end
  end

  def fullname
    firstname + " " + middlename + " " + surname
  end

  def has_allergies?
    allergies.size>0
  end
  

  def has_sensitivities?
    sensitivities.size>0
  end


  def current_ward
    if admissions.current!=nil
      then return admission.current.ward
    else
      return nil
    end
  end


  def inpatient?
    return admissions.current!=nil
  end

  def has_admissions?
    admissions.size > 0 
  end
  
  def has_currentnotes?
    admissions.last.admnotes.size > 0
  end


  def current_agents_names
    agents = Set.new
    current_agents.each do |c|
      agents.add(c.name)
    end
    return agents
  end

  def current_agents_categories_names
    agents = Set.new
    current_agents.each do |c|
      agents.add(c.category.name)
      agents.add(c.name)
    end
    return agents
  end

  def current_agents
    agents = Set.new
    prescriptions.current.each do |p|
      p.product.agents.each do |a|
        agents.add(a)
      end
    end
    return agents
  end
end
