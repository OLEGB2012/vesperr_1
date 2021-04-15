require "application_system_test_case"

class SettingsTest < ApplicationSystemTestCase
  setup do
    @setting = settings(:one)
  end

  test "visiting the index" do
    visit settings_url
    assert_selector "h1", text: "Settings"
  end

  test "creating a Setting" do
    visit settings_url
    click_on "New Setting"

    check "Active" if @setting.active
    fill_in "Address", with: @setting.address
    fill_in "Call to action", with: @setting.call_to_action
    fill_in "Email", with: @setting.email
    fill_in "Facebook url", with: @setting.facebook_url
    fill_in "Get started", with: @setting.get_started
    fill_in "Instagram url", with: @setting.instagram_url
    fill_in "Linkedin url", with: @setting.linkedin_url
    fill_in "Name", with: @setting.name
    fill_in "Phone", with: @setting.phone
    fill_in "Privacy policy", with: @setting.privacy_policy
    fill_in "Slogan additional", with: @setting.slogan_additional
    fill_in "Slogan basic", with: @setting.slogan_basic
    fill_in "Terms of use", with: @setting.terms_of_use
    fill_in "Twitter url", with: @setting.twitter_url
    click_on "Create Setting"

    assert_text "Setting was successfully created"
    click_on "Back"
  end

  test "updating a Setting" do
    visit settings_url
    click_on "Edit", match: :first

    check "Active" if @setting.active
    fill_in "Address", with: @setting.address
    fill_in "Call to action", with: @setting.call_to_action
    fill_in "Email", with: @setting.email
    fill_in "Facebook url", with: @setting.facebook_url
    fill_in "Get started", with: @setting.get_started
    fill_in "Instagram url", with: @setting.instagram_url
    fill_in "Linkedin url", with: @setting.linkedin_url
    fill_in "Name", with: @setting.name
    fill_in "Phone", with: @setting.phone
    fill_in "Privacy policy", with: @setting.privacy_policy
    fill_in "Slogan additional", with: @setting.slogan_additional
    fill_in "Slogan basic", with: @setting.slogan_basic
    fill_in "Terms of use", with: @setting.terms_of_use
    fill_in "Twitter url", with: @setting.twitter_url
    click_on "Update Setting"

    assert_text "Setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Setting" do
    visit settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Setting was successfully destroyed"
  end
end
