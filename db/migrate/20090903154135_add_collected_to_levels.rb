class AddCollectedToLevels < ActiveRecord::Migration
  def self.up
    add_column :levels, :collected, :Datetime
  end

  def self.down
    remove_column :levels, :collected
  end
end
