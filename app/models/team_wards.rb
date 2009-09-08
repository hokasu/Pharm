class TeamWard < ActiveRecord::Base
  belongs_to :team
  belongs_to :ward
end
