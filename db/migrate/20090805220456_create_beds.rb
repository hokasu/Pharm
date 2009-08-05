class CreateBeds < ActiveRecord::Migration
  def self.up
    create_table :beds do |t|
      t.integer :bed_number
      t.integer :ward_id
      t.integer :admission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :beds
  end
end
