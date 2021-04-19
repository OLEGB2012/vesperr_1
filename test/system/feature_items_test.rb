require "application_system_test_case"

class FeatureItemsTest < ApplicationSystemTestCase
  setup do
    @feature_item = feature_items(:one)
  end

  test "visiting the index" do
    visit feature_items_url
    assert_selector "h1", text: "Feature Items"
  end

  test "creating a Feature item" do
    visit feature_items_url
    click_on "New Feature Item"

    fill_in "Feature section", with: @feature_item.feature_section_id
    fill_in "Header", with: @feature_item.header
    fill_in "Icon class", with: @feature_item.icon_class
    fill_in "Position", with: @feature_item.position
    fill_in "Style color", with: @feature_item.style_color
    click_on "Create Feature item"

    assert_text "Feature item was successfully created"
    click_on "Back"
  end

  test "updating a Feature item" do
    visit feature_items_url
    click_on "Edit", match: :first

    fill_in "Feature section", with: @feature_item.feature_section_id
    fill_in "Header", with: @feature_item.header
    fill_in "Icon class", with: @feature_item.icon_class
    fill_in "Position", with: @feature_item.position
    fill_in "Style color", with: @feature_item.style_color
    click_on "Update Feature item"

    assert_text "Feature item was successfully updated"
    click_on "Back"
  end

  test "destroying a Feature item" do
    visit feature_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feature item was successfully destroyed"
  end
end
