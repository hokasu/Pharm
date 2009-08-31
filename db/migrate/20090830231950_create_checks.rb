class CreateChecks < ActiveRecord::Migration
  def self.up
    create_table :checks do |t|
      t.integer :policy_id 
      t.string :check_type
      t.string :check
      t.string :operator
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :checks
  end
end
