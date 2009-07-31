class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :firstname
      t.string :middlename
      t.string :surname
      t.date :dob
      t.text :allergies
      t.text :sensitivities

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
