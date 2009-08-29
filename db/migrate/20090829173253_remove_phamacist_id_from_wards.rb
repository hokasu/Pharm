class RemovePhamacistIdFromWards < ActiveRecord::Migration
  def self.up
    remove_column :wards, :pharmacist_id
  end

  def self.down
    add_column :wards, :pharmacist_id, :integer
  end
end
