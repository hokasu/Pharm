class CreateProductPolicies < ActiveRecord::Migration
  def self.up
    create_table :product_policies do |t|
      t.integer :policy_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_policies
  end
end
