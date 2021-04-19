require "application_system_test_case"

class CapabilitiesTest < ApplicationSystemTestCase
  setup do
    @capability = capabilities(:one)
  end

  test "visiting the index" do
    visit capabilities_url
    assert_selector "h1", text: "Capabilities"
  end

  test "creating a Capability" do
    visit capabilities_url
    click_on "New Capability"

    fill_in "Name", with: @capability.name
    click_on "Create Capability"

    assert_text "Capability was successfully created"
    click_on "Back"
  end

  test "updating a Capability" do
    visit capabilities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @capability.name
    click_on "Update Capability"

    assert_text "Capability was successfully updated"
    click_on "Back"
  end

  test "destroying a Capability" do
    visit capabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capability was successfully destroyed"
  end
end
