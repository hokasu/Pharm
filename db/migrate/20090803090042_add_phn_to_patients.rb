class AddPhnToPatients < ActiveRecord::Migration
  def self.up
    add_column :patients, :phn, :string
  end

  def self.down
    remove_column :patients, :phn
  end
end
