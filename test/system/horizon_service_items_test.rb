require "application_system_test_case"

class HorizonServiceItemsTest < ApplicationSystemTestCase
  setup do
    @horizon_service_item = horizon_service_items(:one)
  end

  test "visiting the index" do
    visit horizon_service_items_url
    assert_selector "h1", text: "Horizon Service Items"
  end

  test "creating a Horizon service item" do
    visit horizon_service_items_url
    click_on "New Horizon Service Item"

    check "Active" if @horizon_service_item.active
    fill_in "Description", with: @horizon_service_item.description
    fill_in "Header", with: @horizon_service_item.header
    fill_in "Icon class", with: @horizon_service_item.icon_class
    fill_in "Position", with: @horizon_service_item.position
    fill_in "Service section", with: @horizon_service_item.service_section_id
    click_on "Create Horizon service item"

    assert_text "Horizon service item was successfully created"
    click_on "Back"
  end

  test "updating a Horizon service item" do
    visit horizon_service_items_url
    click_on "Edit", match: :first

    check "Active" if @horizon_service_item.active
    fill_in "Description", with: @horizon_service_item.description
    fill_in "Header", with: @horizon_service_item.header
    fill_in "Icon class", with: @horizon_service_item.icon_class
    fill_in "Position", with: @horizon_service_item.position
    fill_in "Service section", with: @horizon_service_item.service_section_id
    click_on "Update Horizon service item"

    assert_text "Horizon service item was successfully updated"
    click_on "Back"
  end

  test "destroying a Horizon service item" do
    visit horizon_service_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Horizon service item was successfully destroyed"
  end
end
