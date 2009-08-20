class AddPeriodToDoses < ActiveRecord::Migration
  def self.up
    add_column :doses, :period, :string
  end

  def self.down
    remove_column :doses, :period
  end
end
