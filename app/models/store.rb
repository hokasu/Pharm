class Store < ActiveRecord::Base
  has_many :product_stores
  has_many :products, :through => :product_stores
  has_many :store_order_lines, :through => :product_stores
  belongs_to :ward

  def orders
    so = Set.new
    store_order_lines.each do |s|
      so.add(s.store_order)
    end
    return so.to_a
  end
    
end
