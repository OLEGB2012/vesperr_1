require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting = settings(:one)
  end

  test "should get index" do
    get settings_url
    assert_response :success
  end

  test "should get new" do
    get new_setting_url
    assert_response :success
  end

  test "should create setting" do
    assert_difference('Setting.count') do
      post settings_url, params: { setting: { active: @setting.active, address: @setting.address, call_to_action: @setting.call_to_action, email: @setting.email, facebook_url: @setting.facebook_url, get_started: @setting.get_started, instagram_url: @setting.instagram_url, linkedin_url: @setting.linkedin_url, name: @setting.name, phone: @setting.phone, privacy_policy: @setting.privacy_policy, slogan_additional: @setting.slogan_additional, slogan_basic: @setting.slogan_basic, terms_of_use: @setting.terms_of_use, twitter_url: @setting.twitter_url } }
    end

    assert_redirected_to setting_url(Setting.last)
  end

  test "should show setting" do
    get setting_url(@setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_setting_url(@setting)
    assert_response :success
  end

  test "should update setting" do
    patch setting_url(@setting), params: { setting: { active: @setting.active, address: @setting.address, call_to_action: @setting.call_to_action, email: @setting.email, facebook_url: @setting.facebook_url, get_started: @setting.get_started, instagram_url: @setting.instagram_url, linkedin_url: @setting.linkedin_url, name: @setting.name, phone: @setting.phone, privacy_policy: @setting.privacy_policy, slogan_additional: @setting.slogan_additional, slogan_basic: @setting.slogan_basic, terms_of_use: @setting.terms_of_use, twitter_url: @setting.twitter_url } }
    assert_redirected_to setting_url(@setting)
  end

  test "should destroy setting" do
    assert_difference('Setting.count', -1) do
      delete setting_url(@setting)
    end

    assert_redirected_to settings_url
  end
end
