class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.integer :patient_id
      t.datetime :admdate
      t.string :ward
      t.string :bed
      t.datetime :depdate
      t.string :primaryindication
      t.text :clinicalsummary

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
