require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  setup do
    @user = users(:one)
  end

  test "welcome email should be valid" do
    email = UserMailer.welcome_email(@user).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
    assert_equal [@user.email], email.to
    assert_equal [TourBooking::Application::USERMAILER_FROM_ADDRESS], email.from
    assert_equal "Welcome to #{TourBooking::Application::PROPERTY_NAME}", email.subject
    assert_includes email.body.to_s, @user.welcome_token
  end

  test "tour booking email should be valid" do
    email = UserMailer.tour_booking_notification(@user).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
    assert_equal [TourBooking::Application::TOUR_AGENT_EMAIL], email.to
    assert_equal [TourBooking::Application::USERMAILER_FROM_ADDRESS], email.from
    assert_equal "#{TourBooking::Application::PROPERTY_NAME}: A New Tour Has Been Scheduled", email.subject
    assert_includes email.body.to_s, @user.user_contact_info.first
    assert_includes email.body.to_s, @user.user_contact_info.last
    assert_includes email.body.to_s, @user.user_tour_preference.client_ip
  end

end
