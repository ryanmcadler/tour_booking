class UserTourPreference < ApplicationRecord
  belongs_to :user
  has_many :user_tour_preference_interests, foreign_key: :preference_id, dependent: :destroy

  accepts_nested_attributes_for :user_tour_preference_interests

  validates_presence_of :user_id, :referrer, :tour_date, :client_ip
  validates :tour_date, date: true
  validates :tour_date, date: { after: Proc.new { Date.today }, message: 'must be after today' }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, if: "rating.present?"

  after_create :send_notification_email

  def send_notification_email
    UserMailer.tour_booking_notification(self.user).deliver_now
  end
end
