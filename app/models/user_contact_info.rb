class UserContactInfo < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :first, :last, :phone

  validates :phone, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i }
end
