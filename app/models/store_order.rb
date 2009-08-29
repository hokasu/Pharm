class StoreOrder < ActiveRecord::Base
  has_many :store_order_lines
end
