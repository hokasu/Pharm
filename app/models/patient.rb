class Patient < ActiveRecord::Base
  has_many :admissions
end
