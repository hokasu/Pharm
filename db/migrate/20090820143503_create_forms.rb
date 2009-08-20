class CreateForms < ActiveRecord::Migration
  def self.up
    create_table :forms do |t|
      t.string :form
      t.string :measure
      t.string :route
      t.string :type
      t.float :factor

      t.timestamps
    end
  end

  def self.down
    drop_table :forms
  end
end
