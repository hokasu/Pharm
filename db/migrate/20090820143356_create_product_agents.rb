class CreateProductAgents < ActiveRecord::Migration
  def self.up
    create_table :product_agents do |t|
      t.integer :product_id
      t.integer :agent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_agents
  end
end
