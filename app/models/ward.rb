class Ward < ActiveRecord::Base
  belongs_to :pharmacist
  has_many :beds
  has_many :admissions, :through => :beds
end
