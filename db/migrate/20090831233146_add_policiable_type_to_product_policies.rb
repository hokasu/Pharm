class AddPoliciableTypeToProductPolicies < ActiveRecord::Migration
  def self.up
    add_column :product_policies, :policy_type, :string
  end

  def self.down
    remove_column :product_policies, :policy_type
  end
end
