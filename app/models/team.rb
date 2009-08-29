class Team < ActiveRecord::Base
  has_many :doctors
  has_many :admissions
end
