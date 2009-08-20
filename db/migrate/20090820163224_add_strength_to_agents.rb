class AddStrengthToAgents < ActiveRecord::Migration
  def self.up
    add_column :agents, :strength, :float
  end

  def self.down
    remove_column :agents, :strength
  end
end
