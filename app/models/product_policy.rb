class ProductPolicy < ActiveRecord::Base
  belongs_to :products
  belongs_to :policies
end
