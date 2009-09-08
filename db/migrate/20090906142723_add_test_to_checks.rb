class AddTestToChecks < ActiveRecord::Migration
  def self.up
    add_column :checks, :test, :boolean
  end

  def self.down
    remove_column :checks, :test
  end
end
