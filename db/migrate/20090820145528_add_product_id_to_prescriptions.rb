class AddProductIdToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :product_id, :integer
  end

  def self.down
    remove_column :prescriptions, :product_id
  end
end
