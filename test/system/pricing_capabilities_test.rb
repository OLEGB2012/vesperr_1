require "application_system_test_case"

class PricingCapabilitiesTest < ApplicationSystemTestCase
  setup do
    @pricing_capability = pricing_capabilities(:one)
  end

  test "visiting the index" do
    visit pricing_capabilities_url
    assert_selector "h1", text: "Pricing Capabilities"
  end

  test "creating a Pricing capability" do
    visit pricing_capabilities_url
    click_on "New Pricing Capability"

    fill_in "Capability", with: @pricing_capability.capability_id
    fill_in "Position", with: @pricing_capability.position
    fill_in "Pricing item", with: @pricing_capability.pricing_item_id
    check "Status" if @pricing_capability.status
    click_on "Create Pricing capability"

    assert_text "Pricing capability was successfully created"
    click_on "Back"
  end

  test "updating a Pricing capability" do
    visit pricing_capabilities_url
    click_on "Edit", match: :first

    fill_in "Capability", with: @pricing_capability.capability_id
    fill_in "Position", with: @pricing_capability.position
    fill_in "Pricing item", with: @pricing_capability.pricing_item_id
    check "Status" if @pricing_capability.status
    click_on "Update Pricing capability"

    assert_text "Pricing capability was successfully updated"
    click_on "Back"
  end

  test "destroying a Pricing capability" do
    visit pricing_capabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pricing capability was successfully destroyed"
  end
end
