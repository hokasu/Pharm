class Admnote < ActiveRecord::Base
  belongs_to :admission

  def updated?
    upated_at!=created_at
  end
end
