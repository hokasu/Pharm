class PoliciablePolicy < ActiveRecord::Base
  belongs_to :policiable, :polymorphic => true
  belongs_to :policy
end
