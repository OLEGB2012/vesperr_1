require "application_system_test_case"

class GridServiceItemsTest < ApplicationSystemTestCase
  setup do
    @grid_service_item = grid_service_items(:one)
  end

  test "visiting the index" do
    visit grid_service_items_url
    assert_selector "h1", text: "Grid Service Items"
  end

  test "creating a Grid service item" do
    visit grid_service_items_url
    click_on "New Grid Service Item"

    check "Active" if @grid_service_item.active
    fill_in "Description", with: @grid_service_item.description
    fill_in "Header", with: @grid_service_item.header
    fill_in "Position", with: @grid_service_item.position
    fill_in "Service section", with: @grid_service_item.service_section_id
    click_on "Create Grid service item"

    assert_text "Grid service item was successfully created"
    click_on "Back"
  end

  test "updating a Grid service item" do
    visit grid_service_items_url
    click_on "Edit", match: :first

    check "Active" if @grid_service_item.active
    fill_in "Description", with: @grid_service_item.description
    fill_in "Header", with: @grid_service_item.header
    fill_in "Position", with: @grid_service_item.position
    fill_in "Service section", with: @grid_service_item.service_section_id
    click_on "Update Grid service item"

    assert_text "Grid service item was successfully updated"
    click_on "Back"
  end

  test "destroying a Grid service item" do
    visit grid_service_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grid service item was successfully destroyed"
  end
end
