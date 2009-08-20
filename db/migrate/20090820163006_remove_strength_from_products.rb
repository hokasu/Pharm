class RemoveStrengthFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :strength
  end

  def self.down
    add_column :products, :strength, :float
  end
end
