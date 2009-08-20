class Product < ActiveRecord::Base
  has_one :form
  has_many :doses
  has_many :product_agents
  has_many :prescriptions
  has_many :agents, :through => :product_agents
  define_index do
    indexes agents.name, :as => :agents_name
    indexes brand
  end

end
