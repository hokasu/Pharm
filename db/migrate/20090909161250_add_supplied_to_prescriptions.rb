class AddSuppliedToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :supplied, :float
  end

  def self.down
    remove_column :prescriptions, :supplied
  end
end
