class CreateWards < ActiveRecord::Migration
  def self.up
    create_table :wards do |t|
      t.string :name
      t.string :type
      t.string :pharmacist
      t.string :nurse
      t.text :ward_notes

      t.timestamps
    end
  end

  def self.down
    drop_table :wards
  end
end
