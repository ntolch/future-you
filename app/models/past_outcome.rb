class PastOutcome < ActiveRecord::Base
  belongs_to :past_situation
  belongs_to :user_decision
end
