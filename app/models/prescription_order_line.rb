class PrescriptionOrderLine < ActiveRecord::Base
  belongs_to :prescription
  belongs_to :prescription_order
  named_scope :recent, :conditions => [ :created_at =>(14.days.ago...DateTime.now) ]
end
