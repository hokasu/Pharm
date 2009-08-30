class StoreOrder < ActiveRecord::Base
  belongs_to :status
  has_many :store_order_lines
end
