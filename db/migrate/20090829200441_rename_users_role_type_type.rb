class RenameUsersRoleTypeType < ActiveRecord::Migration
  def self.up
    rename_column :users, :role_type, :type
  end

  def self.down
    rename_column :users, :type, :role_type
  end
end
