class Prescription < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  belongs_to :product
  belongs_to :dose
  has_many :prescription_order_lines
  has_many :prescription_orders, :through => :prescription_order_lines
  named_scope :current, :conditions => ["start <  NOW() AND  end > NOW()"] 

  def orders
    order = Set.new
    prescription_order_lines.each do |o|
      order.add(o.prescription_order)
    end
    return order.to_a
  end
end
