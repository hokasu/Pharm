class Admission < ActiveRecord::Base
  belongs_to :patient
  belongs_to :bed
  belongs_to :team
  has_many :admnotes
  belongs_to :bed
  has_one :ward, :through => :bed
  named_scope :current, :conditions =>  ["admdate <  NOW() AND depdate > NOW()"]
  validates_presence_of :patient_id


  def self.leaving(days_offset, frm = 0)
    leaving = []
    from = Date.today.+(frm)
    days = Date.today.+(days_offset)
    if days > from
      admissions = self.find(:all, :conditions => { :depdate =>(from...days) })
    else
      admissions = self.find(:all, :conditions => { :depdate =>(days...from) })
    end
    for admission in admissions
      leaving.push(admission.patient)
    end
    return leaving
  end

  def has_admnotes?
    !admnotes.size==0
  end

end

