class AddBandToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :band, :string
  end

  def self.down
    remove_column :users, :band
  end
end
