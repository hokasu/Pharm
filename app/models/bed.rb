class Bed < ActiveRecord::Base
  belongs_to :admission
  belongs_to :ward
end
