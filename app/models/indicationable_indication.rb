class IndicationableIndication < ActiveRecord::Base
  belongs_to :indicationable, :polymorphic => true
  belongs_to :indication
end
