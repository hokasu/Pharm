class StoreOrderLine < ActiveRecord::Base
  belongs_to :product_store
  belongs_to :store_order

  def description
    quantity.to_s + " x " + product_store.product.description
  end

end
