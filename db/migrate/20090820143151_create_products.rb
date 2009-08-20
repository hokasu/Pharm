class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :brand
      t.float :strength
      t.integer :pack_size
      t.integer :form_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :products
  end
end
