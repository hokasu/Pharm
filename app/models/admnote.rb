class Admnote < ActiveRecord::Base
  belongs_to :admission
  belongs_to :pharmacist

  def updated?
    updated_at!=created_at
  end
end
