require "application_system_test_case"

class PricingItemsTest < ApplicationSystemTestCase
  setup do
    @pricing_item = pricing_items(:one)
  end

  test "visiting the index" do
    visit pricing_items_url
    assert_selector "h1", text: "Pricing Items"
  end

  test "creating a Pricing item" do
    visit pricing_items_url
    click_on "New Pricing Item"

    fill_in "Name", with: @pricing_item.name
    fill_in "Position", with: @pricing_item.position
    fill_in "Price", with: @pricing_item.price
    fill_in "Pricing section", with: @pricing_item.pricing_section_id
    click_on "Create Pricing item"

    assert_text "Pricing item was successfully created"
    click_on "Back"
  end

  test "updating a Pricing item" do
    visit pricing_items_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pricing_item.name
    fill_in "Position", with: @pricing_item.position
    fill_in "Price", with: @pricing_item.price
    fill_in "Pricing section", with: @pricing_item.pricing_section_id
    click_on "Update Pricing item"

    assert_text "Pricing item was successfully updated"
    click_on "Back"
  end

  test "destroying a Pricing item" do
    visit pricing_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pricing item was successfully destroyed"
  end
end
