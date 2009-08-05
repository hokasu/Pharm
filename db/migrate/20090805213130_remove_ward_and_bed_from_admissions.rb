class RemoveWardAndBedFromAdmissions < ActiveRecord::Migration
  def self.up
    remove_column :admissions, :ward
  end

  def self.down
    add_column :admissions, :ward, :string
  end
end
