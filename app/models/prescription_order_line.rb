class PrescriptionOrderLine < ActiveRecord::Base
  belongs_to :prescription
  belongs_to :prescription_order
end
