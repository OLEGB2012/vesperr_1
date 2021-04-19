require "application_system_test_case"

class PricingSectionsTest < ApplicationSystemTestCase
  setup do
    @pricing_section = pricing_sections(:one)
  end

  test "visiting the index" do
    visit pricing_sections_url
    assert_selector "h1", text: "Pricing Sections"
  end

  test "creating a Pricing section" do
    visit pricing_sections_url
    click_on "New Pricing Section"

    fill_in "Description", with: @pricing_section.description
    fill_in "Section", with: @pricing_section.section_id
    click_on "Create Pricing section"

    assert_text "Pricing section was successfully created"
    click_on "Back"
  end

  test "updating a Pricing section" do
    visit pricing_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pricing_section.description
    fill_in "Section", with: @pricing_section.section_id
    click_on "Update Pricing section"

    assert_text "Pricing section was successfully updated"
    click_on "Back"
  end

  test "destroying a Pricing section" do
    visit pricing_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pricing section was successfully destroyed"
  end
end
