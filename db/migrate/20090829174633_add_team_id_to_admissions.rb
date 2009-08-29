class AddTeamIdToAdmissions < ActiveRecord::Migration
  def self.up
    add_column :admissions, :team_id, :integer
  end

  def self.down
    remove_column :admissions, :team_id
  end
end
