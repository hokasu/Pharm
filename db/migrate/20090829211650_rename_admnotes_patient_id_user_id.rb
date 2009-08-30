class RenameAdmnotesPatientIdUserId < ActiveRecord::Migration
  def self.up
    rename_column :admnotes, :patient_id, :user_id
  end

  def self.down
    rename_column :admnotes, :user_id, :patient_id
  end
end
