require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should be invalid without an email" do
    users(:one).email = nil
    assert_nil users(:one).email
    assert_equal false, users(:one).valid?
  end

  test "should be invalid without a valid email" do
    users(:one).email = "foo@bar"
    assert users(:one).email == "foo@bar"
    assert_equal false, users(:one).valid?
  end

end
