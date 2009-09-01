class AddPoliciableIdToProductPolicies < ActiveRecord::Migration
  def self.up
    add_column :product_policies, :policiable_id, :integer
  end

  def self.down
    remove_column :product_policies, :policiable_id
  end
end
