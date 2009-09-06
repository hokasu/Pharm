class Doctor < ActiveRecord::Base
  has_many :prescriptions
  belongs_to :team

  def fullname
    firstname + " " + surname
  end
end
