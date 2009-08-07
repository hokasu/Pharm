class RemoveAdmissionsIdFromBed < ActiveRecord::Migration
  def self.up
    remove_column :beds, :admission_id
  end

  def self.down
    add_column :beds, :admission_id
  end
end
