class Doctor < ActiveRecord::Base
  has_many :prescriptions
  belongs_to :team
end
