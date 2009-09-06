class Product < ActiveRecord::Base
  belongs_to :form
  has_many :product_agents
  has_many :product_doses
  has_many :indicationable_indications, :as => :indicationable
  has_many :indications, :through => :indicationable_indications
  has_many :policiable_policies, :as => :policiable
  has_many :policies, :through => :policiable_policies
  has_many :product_stores
  has_many :prescriptions
  has_many :agents, :through => :product_agents
  has_many :stores, :through => :product_stores
  has_many :doses, :through => :product_doses
  define_index do
    indexes agents.name, :as => :agents_name
    indexes brand
  end
"  
cks = []
  for agent in Product.find(5).agents
  for policy in agent.policies
    for check in policy.checks
      puts 'asdf'
      cks.push(check)
      #check.perform_check(Patient.first)
    end
  end
end
"
  def check_policies(patient)
    results = Set.new
    for policy in policies
      for check in policy.checks
        results << check.perform_check(patient)
      end
    end
    for agent in agents
      results.merge(agent.check_policies(patient))
    end
    return results
  end

   def list_policies(p)
    puts description
    for policy in policies
      puts policy.content
    end
    for agent in agents
      puts agent.name
      agent.check_policies(p)
    end
  end


  def description
    a=agents
    s = ""
    agents.each do |a|
      s = s + a.name + " " + a.strength.to_s + a.measure
      unless a.id == agents.last.id
        s = s + "/"
      end
    end
    s = s + " (" + brand + ") " +form.form + "s"
    return s
  end

  def all_indications
    inds = indications
    for agent in agents
      inds += agent.indications
    end
    return inds 
  end

  def agents_description
    a=agents
    s = ""
    agents.each do |a|
      s = s + a.name + " " + a.strength.to_s + a.measure
      unless a.id == agents.last.id
        s = s + "/"
      end
    end
    return s
  end

  def brand_description
    a = agents
    s = brand + " "
    agents.each do |a|
      s = s + a.strength.to_s + a.measure
      unless a.id == agents.last.id
        s = s + "/"
      end
    end
    s = s + " " + form.form + "s"
    return s
  end



end
