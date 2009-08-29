class StoreOrderLine < ActiveRecord::Base
  belongs_to :product_store
  belongs_to :store_order
end
