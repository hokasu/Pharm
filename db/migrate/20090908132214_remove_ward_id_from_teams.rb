class RemoveWardIdFromTeams < ActiveRecord::Migration
  def self.up
    remove_column :teams, :ward_id
  end

  def self.down
    add_column :teams, :ward_id, :integer
  end
end
