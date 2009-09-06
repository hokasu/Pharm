class CreatePatientIndications < ActiveRecord::Migration
  def self.up
    create_table :patient_indications do |t|
      t.integer :indication_id
      t.integer :patient_id

      t.timestamps
    end
  end

  def self.down
    drop_table :patient_indications
  end
end
