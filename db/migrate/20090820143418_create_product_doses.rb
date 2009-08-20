class CreateProductDoses < ActiveRecord::Migration
  def self.up
    create_table :product_doses do |t|
      t.integer :product_id
      t.integer :dose_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_doses
  end
end
