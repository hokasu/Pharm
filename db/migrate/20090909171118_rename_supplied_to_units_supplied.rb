class RenameSuppliedToUnitsSupplied < ActiveRecord::Migration
  def self.up
    rename_column :prescriptions, :supplied, :units_supplied
  end

  def self.down
    rename_column :prescriptions, :units_supplied, :supplied
  end
end
