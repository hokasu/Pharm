class AddUserIdToPrescriptions < ActiveRecord::Migration
  def self.up
    add_column :prescriptions, :user_id, :integer
  end

  def self.down
    remove_column :prescriptions, :user_id
  end
end
