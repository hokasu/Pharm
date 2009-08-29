class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :firstname
      t.string :surname
      t.string :position
      t.string :page_number
      t.integer :team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
