class Policy < ActiveRecord::Base
  has_many :products, :through => :product_policies
end
