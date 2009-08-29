class AddWardIdToStores < ActiveRecord::Migration
  def self.up
    add_column :stores, :ward_id, :integer
  end

  def self.down
    remove_column :stores, :ward_id
  end
end
