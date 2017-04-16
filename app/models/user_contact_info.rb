class UserContactInfo < ApplicationRecord
  validates_presence_of :user_id, :first, :last, :phone
end
