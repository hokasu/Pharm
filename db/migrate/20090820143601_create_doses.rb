class CreateDoses < ActiveRecord::Migration
  def self.up
    create_table :doses do |t|
      t.integer :frequency
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :doses
  end
end
