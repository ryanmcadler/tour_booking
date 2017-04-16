class User < ApplicationRecord
  has_secure_token :welcome_token

  validates_presence_of :email
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, if: "email.present?"
end
