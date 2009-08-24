class Product < ActiveRecord::Base
  belongs_to :form
  has_many :product_agents
  has_many :product_doses
  has_many :prescriptions
  has_many :agents, :through => :product_agents
  has_many :doses, :through => :product_doses
  define_index do
    indexes agents.name, :as => :agents_name
    indexes brand
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

end
