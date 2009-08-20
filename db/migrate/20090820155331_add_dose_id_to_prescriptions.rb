class AddDoseIdToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :dose_id, :integer
  end

  def self.down
    remove_column :prescriptions, :dose_id
  end
end
