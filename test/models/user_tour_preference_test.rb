require 'test_helper'

class UserTourPreferenceTest < ActiveSupport::TestCase

  test "should be invalid without an user_id" do
    user_tour_preferences(:one).user_id = nil
    assert_nil user_tour_preferences(:one).user_id
    assert_equal false, user_tour_preferences(:one).valid?
  end

  test "should be invalid without a referrer" do
    user_tour_preferences(:one).referrer = nil
    assert_nil user_tour_preferences(:one).referrer
    assert_equal false, user_tour_preferences(:one).valid?
  end

  test "should be invalid without a tour_date" do
    user_tour_preferences(:one).tour_date = nil
    assert_nil user_tour_preferences(:one).tour_date
    assert_equal false, user_tour_preferences(:one).valid?
  end

  test "should be invalid without a valid tour_date" do
    user_tour_preferences(:one).tour_date = "test"
    assert_equal false, user_tour_preferences(:one).valid?
  end

  test "should be invalid without a client_ip" do
    user_tour_preferences(:one).client_ip = nil
    assert_nil user_tour_preferences(:one).client_ip
    assert_equal false, user_tour_preferences(:one).valid?
  end

end
