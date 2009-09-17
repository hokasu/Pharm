class StoreOrderLine < ActiveRecord::Base
  belongs_to :product_store
  belongs_to :store_order
  named_scope :recent, :conditions => { :created_at =>(14.days.ago...DateTime.now) }
  def description
    product_store.product.description + ", " + quantity.to_s + " packs"
  end

end
