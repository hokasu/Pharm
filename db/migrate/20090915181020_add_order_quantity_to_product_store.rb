class AddOrderQuantityToProductStore < ActiveRecord::Migration
  def self.up
    add_column :product_stores, :order_quantity, :int
  end

  def self.down
    remove_column :product_stores, :order_quantity
  end
end
