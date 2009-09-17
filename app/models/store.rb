class Store < ActiveRecord::Base
  has_many :product_stores
  has_many :products, :through => :product_stores
  has_many :store_order_lines, :through => :product_stores
  belongs_to :ward

  @@default_status = "New"

  def store_orders
    so = Set.new
    store_order_lines.each do |s|
      so.add(s.store_order)
    end
    return so.to_a
  end

  def recent_store_orders
    so = Set.new
    store_order_lines.recent.each do |s|
      so.add(s.store_order)
    end
    return so.to_a
  end

  def replenish
    order = StoreOrder.new :status => (Status.find(:all, :conditions => { :status => @@default_status } ).first)
    for product_store in product_stores.to_order
      product_store.order_item(order, product_store.order_quantity)
    end
    if order.store_order_lines.size>0
      #order.save
      return order
    end
  end

  protected

  def default_status
    Status.find(:all, :conditions =>{ :status =>"New"})
  end

    
end
