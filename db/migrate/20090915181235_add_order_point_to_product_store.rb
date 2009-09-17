class AddOrderPointToProductStore < ActiveRecord::Migration
  def self.up
    add_column :product_stores, :order_level, :int
  end

  def self.down
    remove_column :product_stores, :order_level
  end
end
