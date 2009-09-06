class Policy < ActiveRecord::Base
  has_many :policiable_policies
  has_many :products, :through => :policiable_policies
  has_many :agents, :through => :policiable_policies
  has_many :categories, :through => :policiable_policies
  has_many :checks

  def perform_checks(p)
    for check in checks
      check.perform_check(p)
    end
  end
end
