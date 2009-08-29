class AddDoctorIdToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :doctor_id, :integer
  end

  def self.down
    remove_column :prescriptions, :doctor_id
  end
end
