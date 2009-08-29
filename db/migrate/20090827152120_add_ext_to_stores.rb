class AddExtToStores < ActiveRecord::Migration
  def self.up
    add_column :stores, :ext, :integer
  end

  def self.down
    remove_column :stores, :ext
  end
end
