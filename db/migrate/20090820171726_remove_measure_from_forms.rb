class RemoveMeasureFromForms < ActiveRecord::Migration
  def self.up
    remove_column :forms, :measure
  end

  def self.down
    add_column :forms, :measure, :string
  end
end
