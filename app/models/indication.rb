class Indication < ActiveRecord::Base
  has_many :indicationable_indications
  has_many :products, :through => :indicationable_indications
  has_many :agents, :through => :indicationable_indications
end
