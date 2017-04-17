require 'test_helper'

class UserTourPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @user_tour_preference = user_tour_preferences(:one)
    cookies[:welcome_token] = @user.welcome_token
  end

  test "should get new" do
    get new_user_tour_preference_url
    assert_response :success
  end

  test "should create user_tour_preference" do
    assert_difference('UserTourPreference.count') do
      post user_tour_preferences_url, params: {
        user_tour_preference: {
          client_ip: @user_tour_preference.client_ip,
          referrer: @user_tour_preference.referrer,
          tour_date: @user_tour_preference.tour_date,
          user_id: @user_tour_preference.user_id
        }
      }
    end

    assert_redirected_to user_tour_preference_url(UserTourPreference.last)
  end

  test "should show user_tour_preference" do
    get user_tour_preference_url(@user_tour_preference)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_tour_preference_url(@user_tour_preference)
    assert_response :success
  end

  test "should update user_tour_preference" do
    patch user_tour_preference_url(@user_tour_preference), params: { user_tour_preference: { client_ip: @user_tour_preference.client_ip, rating: @user_tour_preference.rating, referrer: @user_tour_preference.referrer, tour_date: @user_tour_preference.tour_date, user_id: @user_tour_preference.user_id } }
    assert_redirected_to root_url
  end

end
