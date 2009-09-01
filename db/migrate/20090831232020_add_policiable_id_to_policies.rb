class AddPoliciableIdToPolicies < ActiveRecord::Migration
  def self.up
    add_column :policies, :policiable_id, :integer
  end

  def self.down
    remove_column :policies, :policiable_id
  end
end
