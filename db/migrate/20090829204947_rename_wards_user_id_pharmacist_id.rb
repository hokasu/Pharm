class RenameWardsUserIdPharmacistId < ActiveRecord::Migration
  def self.up
    rename_column :wards, :user_id, :pharmacist_id
  end

  def self.down
    rename_column :wards, :pharmacist_id, :user_id
  end
end
