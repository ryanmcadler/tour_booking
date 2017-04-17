require 'test_helper'

class UserContactInfoTest < ActiveSupport::TestCase

  test "should be invalid without an user_id" do
    user_contact_infos(:one).user_id = nil
    assert_nil user_contact_infos(:one).user_id
    assert_equal false, user_contact_infos(:one).valid?
  end

  test "should be invalid without a first" do
    user_contact_infos(:one).first = nil
    assert_nil user_contact_infos(:one).first
    assert_equal false, user_contact_infos(:one).valid?
  end

  test "should be invalid without a last" do
    user_contact_infos(:one).last = nil
    assert_nil user_contact_infos(:one).last
    assert_equal false, user_contact_infos(:one).valid?
  end

  test "should be invalid without a phone" do
    user_contact_infos(:one).phone = nil
    assert_nil user_contact_infos(:one).phone
    assert_equal false, user_contact_infos(:one).valid?
  end

  test "should be invalid without a valid phone" do
    user_contact_infos(:one).phone = "55512"
    assert user_contact_infos(:one).phone == "55512"
    assert_equal false, user_contact_infos(:one).valid?
  end

  test "should be invalid without a valid phone 2" do
    user_contact_infos(:one).phone = "abc123"
    assert user_contact_infos(:one).phone == "abc123"
    assert_equal false, user_contact_infos(:one).valid?
  end

end
