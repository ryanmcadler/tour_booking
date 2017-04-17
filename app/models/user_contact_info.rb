class UserContactInfo < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :first, :last, :phone
end
