class Admission < ActiveRecord::Base
  belongs_to :patient
  belongs_to :bed
  belongs_to :team
  has_many :admnotes
  belongs_to :bed
  has_one :ward, :through => :bed
  named_scope :current, :conditions =>  ["admdate <  NOW() AND depdate > NOW()"]
  validates_presence_of :patient_id

  #def admdate_formatted
  #   admdate.to_date.strftime '%m/%d/%Y'
  #end

  def has_admnotes?
    !admnotes.size==0

  end

end

