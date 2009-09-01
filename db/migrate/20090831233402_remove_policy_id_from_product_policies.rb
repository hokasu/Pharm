class RemovePolicyIdFromProductPolicies < ActiveRecord::Migration
  def self.up
    remove_column :product_policies, :policy_id
  end

  def self.down
    add_column :product_policies, :policy_id, :integer
  end
end
