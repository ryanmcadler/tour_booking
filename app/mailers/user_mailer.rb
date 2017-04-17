class UserMailer < ApplicationMailer

  default from: TourBooking::Application::USERMAILER_FROM_ADDRESS
  layout 'mailer'

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Welcome to #{TourBooking::Application::PROPERTY_NAME}")
  end

  def tour_booking_notification(user)
    @user = user
    @user_contact_info = user.user_contact_info
    @user_tour_preference = user.user_tour_preference
    mail(to: TourBooking::Application::TOUR_AGENT_EMAIL, subject: "#{TourBooking::Application::PROPERTY_NAME}: A New Tour Has Been Scheduled")
  end

end
