class Pharmacist < ActiveRecord::Base
  has_one :ward
  has_many :beds, :through => :ward
  has_many :admissions, :through => :beds
  has_many :patients, :through => :admissions
  end
