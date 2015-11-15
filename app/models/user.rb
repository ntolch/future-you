class User < ActiveRecord::Base
	has_many :past_situations
	has_many :new_situations
	has_many :past_outcomes, through: :past_situations
	has_many :ideal_outcomes, through: :new_situations
	has_many :user_decisions, through: :past_outcomes
	has_many :recommended_decisions, through: :ideal_outcomes
end
