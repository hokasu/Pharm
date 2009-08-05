class Admission < ActiveRecord::Base
  belongs_to :patient
  has_many :admnotes
  validates_presence_of :patient_id

  #def admdate_formatted
  #   admdate.to_date.strftime '%m/%d/%Y'
  #end

  def has_notes?
    !admnotes.nil?
  end

end

