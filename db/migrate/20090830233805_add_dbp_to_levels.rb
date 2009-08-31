class AddDbpToLevels < ActiveRecord::Migration
  def self.up
    add_column :levels, :dbp, :integer
  end

  def self.down
    remove_column :levels, :dbp
  end
end
