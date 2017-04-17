class UserTourPreferenceInterest < ApplicationRecord
  belongs_to :user_tour_preference, foreign_key: :preference_id, primary_key: :id

  validates_presence_of :preference_id, :interest
end
