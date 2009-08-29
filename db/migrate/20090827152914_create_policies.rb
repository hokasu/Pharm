class CreatePolicies < ActiveRecord::Migration
  def self.up
    create_table :policies do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :policies
  end
end
