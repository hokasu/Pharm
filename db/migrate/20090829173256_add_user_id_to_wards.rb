class AddUserIdToWards < ActiveRecord::Migration
  def self.up
    add_column :wards, :user_id, :integer
  end

  def self.down
    remove_column :wards, :user_id
  end
end
