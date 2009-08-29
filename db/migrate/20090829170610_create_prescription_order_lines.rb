class CreatePrescriptionOrderLines < ActiveRecord::Migration
  def self.up
    create_table :prescription_order_lines do |t|
      t.integer :prescription_id
      t.integer :prescription_order_id
      t.integer :status_id
      t.integer :packs
      t.integer :units
      t.boolean :inpatient
      t.boolean :priority

      t.timestamps
    end
  end

  def self.down
    drop_table :prescription_order_lines
  end
end
