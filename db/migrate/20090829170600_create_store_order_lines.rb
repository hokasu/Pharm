class CreateStoreOrderLines < ActiveRecord::Migration
  def self.up
    create_table :store_order_lines do |t|
      t.integer :product_store_id
      t.integer :store_order_id

      t.timestamps
    end
  end

  def self.down
    drop_table :store_order_lines
  end
end
