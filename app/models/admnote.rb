class Admnote < ActiveRecord::Base
  belongs_to :admission

  def updated?
    updated_at!=created_at
  end
end
