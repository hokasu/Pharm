class RenameProductPoliciesToPoliciablePolicies < ActiveRecord::Migration
  def self.up
    execute "RENAME TABLE product_policies TO policiable_policies"
  end

  def self.down
    execute "RENAME TABLE policiable_policies TO product_policies"
  end
end
