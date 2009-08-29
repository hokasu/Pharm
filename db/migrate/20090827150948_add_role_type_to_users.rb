class AddRoleTypeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role_type, :string
  end

  def self.down
    remove_column :users, :role_type
  end
end
