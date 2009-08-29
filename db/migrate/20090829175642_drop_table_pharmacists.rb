class DropTablePharmacists < ActiveRecord::Migration
  def self.down
    create_table :pharmacists do |t|
      t.string :firstname
      t.string :surname
      t.string :pager

      t.timestamps
    end
  end

  def self.up
    drop_table :pharmacists
  end
end
