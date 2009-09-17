class StoreOrder < ActiveRecord::Base
  belongs_to :status
  belongs_to :user
  has_many :store_order_lines
  named_scope :recent, :conditions => { :created_at =>(14.days.ago...DateTime.now) }

  def process_delivered
    if status.status == "Delivered"
      for line in store_order_lines
        line.product_store.received
        line.product_store.level += line.quantity
        line.product_store.save
      end
      self.status = Status.find(:all, :conditions => { :status => 'Finalised' }).first
      self.save
    end
  end
end
