class AddFactorToAgents < ActiveRecord::Migration
  def self.up
    add_column :agents, :factor, :float
  end

  def self.down
    remove_column :agents, :factor
  end
end
