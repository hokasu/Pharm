class Bed < ActiveRecord::Base
  has_many :admissions
  belongs_to :ward

  def admission #returns nil if bed is not occupied or current admission
    result = Admission.new
    admissions.each do |b|
      if b.admdate < DateTime.now && b.depdate > DateTime.now
        then result = b
      end
    end
    return result
  end


end
