require "application_system_test_case"

class FaqSectionsTest < ApplicationSystemTestCase
  setup do
    @faq_section = faq_sections(:one)
  end

  test "visiting the index" do
    visit faq_sections_url
    assert_selector "h1", text: "Faq Sections"
  end

  test "creating a Faq section" do
    visit faq_sections_url
    click_on "New Faq Section"

    fill_in "Description", with: @faq_section.description
    fill_in "Section", with: @faq_section.section_id
    click_on "Create Faq section"

    assert_text "Faq section was successfully created"
    click_on "Back"
  end

  test "updating a Faq section" do
    visit faq_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @faq_section.description
    fill_in "Section", with: @faq_section.section_id
    click_on "Update Faq section"

    assert_text "Faq section was successfully updated"
    click_on "Back"
  end

  test "destroying a Faq section" do
    visit faq_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faq section was successfully destroyed"
  end
end
