class RenameProductPoliciesProductIdToPolicyId < ActiveRecord::Migration
  def self.up
    rename_column :product_policies, :product_id, :policy_id
  end

  def self.down
    rename_column :product_policies, :policy_id, :product_id
  end
end
