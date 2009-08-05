class RenamePharmacistToPharmacistIdInWard < ActiveRecord::Migration
  def self.up
    rename_column "wards", "pharmacist", "pharmacist_id"
  end

  def self.down
    rename_column "wards", "pharmacist_id", "pharmacist"
  end
end
