class ProductStore < ActiveRecord::Base
  belongs_to :product
  belongs_to :store
  has_many :store_order_lines
  has_many :store_orders, :through => :store_order_lines
  named_scope :instock, :conditions => { :level =>(1...1000000) }
  named_scope :outofstock, :conditions => { :level =>(0) }
  named_scope :to_order, :conditions => [ "level < order_level AND on_order = false" ]

  def order_item(order, quantity)
    StoreOrderLine.create(:store_order => order, :product_store => self, :quantity => quantity)
    makeonorder
  end

  def decrement
    self.level = level-1
    self.save
  end

  protected

  def received
    self.on_order = 0
    self.save
  end

  private

  def makeonorder
    self.on_order = 1
    self.save
  end


 end
