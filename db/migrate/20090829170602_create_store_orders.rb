class CreateStoreOrders < ActiveRecord::Migration
  def self.up
    create_table :store_orders do |t|
      t.integer :status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :store_orders
  end
end
