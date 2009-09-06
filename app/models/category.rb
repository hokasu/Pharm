class Category < ActiveRecord::Base
  has_many :policiable_policies, :as => :policiable
  has_many :policies, :through => :policiable_policies
  has_many :agents

  def check_policies(p)
    unless policies.empty?
      puts name.capitalize
      for policy in policies
        puts policy.content
      end
    end
  end
end
