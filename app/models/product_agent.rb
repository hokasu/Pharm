class ProductAgent < ActiveRecord::Base
  belongs_to :product
  belongs_to :agent
end
