class CreateAdmnotes < ActiveRecord::Migration
  def self.up
    create_table :admnotes do |t|
      t.string :username
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :admnotes
  end
end
