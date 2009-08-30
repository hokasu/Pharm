class Admnote < ActiveRecord::Base
  belongs_to :admission
  belongs_to :user

  def updated?
    updated_at!=created_at
  end
end
