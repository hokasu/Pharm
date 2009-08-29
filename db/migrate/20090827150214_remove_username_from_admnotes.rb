class RemoveUsernameFromAdmnotes < ActiveRecord::Migration
  def self.up
    remove_column :admnotes, :username
  end

  def self.down
    add_column :admnotes, :username, :string
  end
end
