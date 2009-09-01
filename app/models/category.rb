class Category < ActiveRecord::Base
  has_many :policiable_policies, :as => :policiable
  has_many :policies, :through => :policiable_policies
  has_many :agents
end
