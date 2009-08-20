class Agent < ActiveRecord::Base
  has_many :products, :through => :product_agents
  has_one :category
end
