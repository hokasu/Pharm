class RemoveFactorFromForms < ActiveRecord::Migration
  def self.up
    remove_column :forms, :factor
  end

  def self.down
    add_column :forms, :factor, :float
  end
end
