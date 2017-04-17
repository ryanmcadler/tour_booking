class UserTourPreference < ApplicationRecord
  belongs_to :user
  has_many :user_tour_preference_interests, foreign_key: :preference_id

  validates_presence_of :user_id, :referrer, :tour_date, :client_ip
  validates :tour_date, date: true
  validates :tour_date, date: { after: Proc.new { Date.today }, message: 'must be after today' }
end
