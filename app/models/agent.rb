class Agent < ActiveRecord::Base
  has_many :indicationable_indications, :as => :indicationable
  has_many :indications, :through => :indicationable_indications
  has_many :product_agents
  has_many :products, :through => :product_agents
  has_many :policiable_policies, :as => :policiable
  has_many :policies, :through => :policiable_policies
  belongs_to :category

  def check_policies(patient)
    results = Set.new
    for policy in policies
      for check in policy.checks
        results << check.perform_check(patient)
      end
    end
     results.merge(category.check_policies(patient))
    return results
  end

  def list_policies(p)
    for policy in policies
      puts policy.content
    end
    category.check_policies(p)
  end

  def description
    name + " " + strength.to_s + measure
  end
end
