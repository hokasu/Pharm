class PrescriptionOrder < ActiveRecord::Base
  belongs_to :status
  belongs_to :user
  has_many :prescription_order_lines
  has_one :prescription, :through => :prescription_order_lines

  def process_delivered
    if status.status == "Delivered"
      for line in prescription_order_lines
        pr = line.prescription
        pr.units_supplied += line.units
        pr.packs_supplied += line.packs
        pr.save
      end
      self.status = Status.find(:all, :conditions => { :status => 'Finalised' }).first 
      self.save
    end
  end

end
