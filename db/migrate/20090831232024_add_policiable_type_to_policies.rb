class AddPoliciableTypeToPolicies < ActiveRecord::Migration
  def self.up
    add_column :policies, :policy_type, :string
  end

  def self.down
    remove_column :policies, :policy_type
  end
end
