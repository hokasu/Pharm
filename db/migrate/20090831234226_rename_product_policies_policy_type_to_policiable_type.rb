class RenameProductPoliciesPolicyTypeToPoliciableType < ActiveRecord::Migration
  def self.up
    rename_column :product_policies, :policy_type, :policiable_type
  end

  def self.down
    rename_column :product_policies, :policiable_type, :policy_type
  end
end
