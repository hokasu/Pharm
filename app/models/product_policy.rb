class ProductPolicy < ActiveRecord::Base
  belongs_to :product
  belongs_to :policy
end
