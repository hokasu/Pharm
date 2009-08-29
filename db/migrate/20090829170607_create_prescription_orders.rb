class CreatePrescriptionOrders < ActiveRecord::Migration
  def self.up
    create_table :prescription_orders do |t|
      t.integer :status_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :prescription_orders
  end
end
