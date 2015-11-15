class IdealOutcome < ActiveRecord::Base
  belongs_to :new_situation
  belongs_to :recommended_decision
end
