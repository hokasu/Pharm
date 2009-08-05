class Pharmacist < ActiveRecord::Base
  has_one :ward
  has_many :beds, :through => :wards
  has_many :admissions, :through => :beds
  has_many :patients, :through => :admissions
  end
