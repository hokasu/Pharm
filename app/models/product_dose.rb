class ProductDose < ActiveRecord::Base
  belongs_to :product
  belongs_to :dose
end
