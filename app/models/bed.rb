class Bed < ActiveRecord::Base
  has_many :admissions
  belongs_to :ward

  def admission #TODO make actually useful
    admissions.each do |b|
      if b.admdate < DateTime.now && b.depdate > DateTime.now
        return b
      end
    end
  end


end
