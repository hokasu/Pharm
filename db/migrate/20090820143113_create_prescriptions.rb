class CreatePrescriptions < ActiveRecord::Migration
  def self.up
    create_table :prescriptions do |t|
      t.datetime :start
      t.datetime :end
      t.text :ancillary_instructions
      t.timestamps
    end
  end
  
  def self.down
    drop_table :prescriptions
  end
end
