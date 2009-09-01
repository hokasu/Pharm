class RemovePoliciableIdFromPolicies < ActiveRecord::Migration
  def self.up
    remove_column :policies, :policiable_id
  end

  def self.down
    add_column :policies, :policiable_id, :integer
  end
end
