class Team < ActiveRecord::Base
  has_many :doctors
  has_many :admissions
  has_many :team_wards
  has_many :wards, :through => :team_wards
  belongs_to :ward

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
