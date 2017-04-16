require 'test_helper'

class UserContactInfosControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @user_contact_info = user_contact_infos(:one)
  end

  test "should get new" do
    get new_user_contact_info_url
    assert_response :success
  end

  test "should create user_contact_info" do
    assert_difference('UserContactInfo.count') do
      post user_contact_infos_url, params: { user_contact_info: { first: @user_contact_info.first, last: @user_contact_info.last, phone: @user_contact_info.phone, user_id: @user_contact_info.user_id } }
    end

    assert_redirected_to user_contact_info_url(UserContactInfo.last)
  end

end
