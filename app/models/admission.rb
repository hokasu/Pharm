class Admission < ActiveRecord::Base
  belongs_to :patient
  has_many :admnotes
  has_one :bed
  has_one :ward, :through => :bed
  validates_presence_of :patient_id

  #def admdate_formatted
  #   admdate.to_date.strftime '%m/%d/%Y'
  #end

  def has_admnotes?
    !admnotes.size==0
  end

end
#tomoj: robert__: for the has_one ward in patient, you need like "has_one :current_admission, :conditions => ...however you tell that it's current..."
#[18:14] leachim6 joined the chat room.
#[18:14] tomoj: robert__: then has_one :ward, :through => :current_admission

