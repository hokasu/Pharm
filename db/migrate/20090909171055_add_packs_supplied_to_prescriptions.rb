class AddPacksSuppliedToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :packs_supplied, :integer
  end

  def self.down
    remove_column :prescriptions, :packs_supplied
  end
end
