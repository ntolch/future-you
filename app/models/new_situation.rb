class NewSituation < ActiveRecord::Base
  belongs_to :user
  has_many :tags, as: :taggable
  has_many :ideal_outcomes
  has_many :recommended_decisions, through: :ideal_outcomes
end
