class PastSituation < ActiveRecord::Base
  belongs_to :user
  has_many :tags, as: :taggable
  has_many :past_outcomes
  has_many :user_decisions, through: :past_outcomes
end
