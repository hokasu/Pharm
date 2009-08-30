class Agent < ActiveRecord::Base
  has_many :product_agents
  has_many :products, :through => :product_agents
  belongs_to :category
end
