class Prescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :product
  belongs_to :dose
end
