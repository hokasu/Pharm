class Team < ActiveRecord::Base
  has_many :doctors
  has_many :admissions

  def specialist
    Doctor.find(:all, :conditions => [ "position = 'specialist' AND team_id=?", id])
  end

  def interns
    Doctor.find(:all, :conditions => [ "position = 'intern' AND team_id=?", id])
  end

  def specialty
    specialist.first.specialty
  end
end
