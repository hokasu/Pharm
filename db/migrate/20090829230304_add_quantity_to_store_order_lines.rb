class AddQuantityToStoreOrderLines < ActiveRecord::Migration
  def self.up
    add_column :store_order_lines, :quantity, :integer, :default => 0
  end

  def self.down
    remove_column :store_order_lines, :quantity
  end
end
