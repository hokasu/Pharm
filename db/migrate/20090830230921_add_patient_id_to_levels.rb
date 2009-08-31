class AddPatientIdToLevels < ActiveRecord::Migration
  def self.up
    add_column :levels, :patient_id, :integer
  end

  def self.down
    remove_column :levels, :patient_id
  end
end
