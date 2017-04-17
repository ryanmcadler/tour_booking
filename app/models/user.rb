class User < ApplicationRecord
  has_one :user_contact_info
  has_one :user_tour_preference

  has_secure_token :welcome_token

  validates_presence_of :email
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, if: "email.present?"

  after_create :send_welcome_email

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
end
