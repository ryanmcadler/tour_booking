require 'test_helper'

class UserTourPreferenceInterestTest < ActiveSupport::TestCase

  test "should be invalid without a preference_id" do
    user_tour_preference_interests(:one).preference_id = nil
    assert_nil user_tour_preference_interests(:one).preference_id
    assert_equal false, user_tour_preference_interests(:one).valid?
  end

  test "should be invalid without am interest" do
    user_tour_preference_interests(:one).interest = nil
    assert_nil user_tour_preference_interests(:one).interest
    assert_equal false, user_tour_preference_interests(:one).valid?
  end

end
