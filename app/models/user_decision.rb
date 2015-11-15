class UserDecision < ActiveRecord::Base
	has_many :past_outcomes
	has_many :past_situations, through: :past_outcomes
end
