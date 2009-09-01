class Policy < ActiveRecord::Base
  has_many :policiable_policies
  has_many :products, :through => :policiable_policies
  has_many :checks
end
