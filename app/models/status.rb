class Status < ActiveRecord::Base
  has_many :store_orders
end
