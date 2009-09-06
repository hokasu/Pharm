class AddSpecialtyToDoctors < ActiveRecord::Migration
  def self.up
    add_column :doctors, :specialty, :string
  end

  def self.down
    remove_column :doctors, :specialty
  end
end
