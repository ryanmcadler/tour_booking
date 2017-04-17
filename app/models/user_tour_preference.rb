class UserTourPreference < ApplicationRecord
  validates_presence_of :user_id, :referrer, :tour_date, :client_ip
  validates :tour_date, date: true
end
