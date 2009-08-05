class RenameTypeToSpecialty < ActiveRecord::Migration
 def self.up
    rename_column "wards", "type", "specialty"
  end

  def self.down
    rename_column "wards", "specialty", "type"
  end
end
