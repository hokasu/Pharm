class CreatePharmacists < ActiveRecord::Migration
  def self.up
    create_table :pharmacists do |t|
      t.string :firstname
      t.string :surname
      t.string :pager

      t.timestamps
    end
  end

  def self.down
    drop_table :pharmacists
  end
end
