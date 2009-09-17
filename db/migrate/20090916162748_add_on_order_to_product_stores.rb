class AddOnOrderToProductStores < ActiveRecord::Migration
  def self.up
    add_column :product_stores, :on_order, :boolean
  end

  def self.down
    remove_column :product_stores, :on_order
  end
end
