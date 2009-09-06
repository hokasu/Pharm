class Category < ActiveRecord::Base
  has_many :policiable_policies, :as => :policiable
  has_many :policies, :through => :policiable_policies
  has_many :agents

  def check_policies(patient)
    results = Set.new
    for policy in policies
      for check in policy.checks
        results << check.perform_check(patient)
      end
    end
    return results
  end
end
