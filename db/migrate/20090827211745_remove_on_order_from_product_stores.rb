class RemoveOnOrderFromProductStores < ActiveRecord::Migration
  def self.up
    remove_column :product_stores, :on_order
  end

  def self.down
    add_column :product_stores, :on_order, :integer
  end
end
