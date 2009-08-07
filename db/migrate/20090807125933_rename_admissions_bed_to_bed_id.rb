class RenameAdmissionsBedToBedId < ActiveRecord::Migration
  def self.up
    rename_column "admissions", "bed", "bed_id"
  end

  def self.down
    rename_column "admissions", "bed_id", "bed"
  end
end
