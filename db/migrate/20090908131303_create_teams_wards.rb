class CreateTeamsWards < ActiveRecord::Migration
  def self.up
    create_table :teams_wards do |t|
      t.integer :ward_id
      t.integer :team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :teams_wards
  end
end
