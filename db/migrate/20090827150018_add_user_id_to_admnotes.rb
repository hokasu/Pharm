class AddUserIdToAdmnotes < ActiveRecord::Migration
  def self.up
    add_column :admnotes, :patient_id, :integer
  end

  def self.down
    remove_column :admnotes, :patient_id
  end
end
