require "application_system_test_case"

class FeatureSectionsTest < ApplicationSystemTestCase
  setup do
    @feature_section = feature_sections(:one)
  end

  test "visiting the index" do
    visit feature_sections_url
    assert_selector "h1", text: "Feature Sections"
  end

  test "creating a Feature section" do
    visit feature_sections_url
    click_on "New Feature Section"

    fill_in "Description", with: @feature_section.description
    fill_in "Section", with: @feature_section.section_id
    click_on "Create Feature section"

    assert_text "Feature section was successfully created"
    click_on "Back"
  end

  test "updating a Feature section" do
    visit feature_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @feature_section.description
    fill_in "Section", with: @feature_section.section_id
    click_on "Update Feature section"

    assert_text "Feature section was successfully updated"
    click_on "Back"
  end

  test "destroying a Feature section" do
    visit feature_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feature section was successfully destroyed"
  end
end
