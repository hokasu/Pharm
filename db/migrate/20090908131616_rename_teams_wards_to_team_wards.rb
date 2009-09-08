class RenameTeamsWardsToTeamWards < ActiveRecord::Migration
  def self.up
    execute "RENAME TABLE teams_wards TO team_wards"
  end

  def self.down
    execute "RENAME TABLE team_wards TO teams_wards"
  end
end
