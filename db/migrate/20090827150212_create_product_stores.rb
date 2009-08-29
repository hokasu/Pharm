class CreateProductStores < ActiveRecord::Migration
  def self.up
    create_table :product_stores do |t|
      t.integer :product_id
      t.integer :store_id
      t.integer :level
      t.integer :on_order

      t.timestamps
    end
  end

  def self.down
    drop_table :product_stores
  end
end
