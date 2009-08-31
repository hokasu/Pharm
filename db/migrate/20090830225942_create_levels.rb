class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.float :potassium
      t.float :creatinine
      t.float :inr
      t.float :ppt
      t.float :albumin

      t.timestamps
    end
  end

  def self.down
    drop_table :levels
  end
end
