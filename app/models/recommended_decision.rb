class RecommendedDecision < ActiveRecord::Base
	has_many :ideal_outcomes
	has_many :new_situations, through: :ideal_outcomes
end
