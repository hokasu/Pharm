class Policy < ActiveRecord::Base
  has_many :product_policies
  has_many :products, :through => :product_policies
end
