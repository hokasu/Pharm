class Dose < ActiveRecord::Base
  has_many :products, :through => :product_doses
end
