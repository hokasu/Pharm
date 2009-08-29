class AddPagerToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :pager, :string
  end

  def self.down
    remove_column :users, :pager
  end
end
