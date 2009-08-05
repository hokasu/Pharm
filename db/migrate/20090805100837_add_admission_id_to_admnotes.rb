class AddAdmissionIdToAdmnotes < ActiveRecord::Migration
  def self.up
    add_column :admnotes, :admission_id, :int
  end

  def self.down
    remove_column :admnotes, :admission_id
  end

end
