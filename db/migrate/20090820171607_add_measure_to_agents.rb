class AddMeasureToAgents < ActiveRecord::Migration
  def self.up
    add_column :agents, :measure, :string
  end

  def self.down
    remove_column :agents, :measure
  end
end
