class AddPatientIdToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :patient_id, :integer
  end

  def self.down
    remove_column :prescriptions, :patient_id
  end
end
