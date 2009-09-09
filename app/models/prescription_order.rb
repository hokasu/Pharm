class PrescriptionOrder < ActiveRecord::Base
  belongs_to :status
  belongs_to :user
  has_many :prescription_order_lines
  has_one :prescription, :through => :prescription_order_lines
end
