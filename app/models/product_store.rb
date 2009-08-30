class ProductStore < ActiveRecord::Base
  belongs_to :product
  belongs_to :store
  has_many :store_order_lines
  has_many :store_orders, :through => :store_order_lines
end
