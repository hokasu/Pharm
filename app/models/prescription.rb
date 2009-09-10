class Prescription < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  belongs_to :product
  belongs_to :dose
  named_scope :current, :conditions => ["start <  NOW() AND  end > NOW()"] 
  has_many :prescription_order_lines
  has_many :prescription_orders, :through => :prescription_order_lines

    def orders(status)
    order = Set.new
    prescription_order_lines.each do |o|
      if o.prescription_order.status.status == status
        order.add(o.prescription_order)
      end
    end
    return order.to_a
    end
end
