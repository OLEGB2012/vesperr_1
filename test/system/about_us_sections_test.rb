require "application_system_test_case"

class AboutUsSectionsTest < ApplicationSystemTestCase
  setup do
    @about_us_section = about_us_sections(:one)
  end

  test "visiting the index" do
    visit about_us_sections_url
    assert_selector "h1", text: "About Us Sections"
  end

  test "creating a About us section" do
    visit about_us_sections_url
    click_on "New About Us Section"

    fill_in "Awards class", with: @about_us_section.awards_class
    fill_in "Awards counter", with: @about_us_section.awards_counter
    fill_in "Awards text", with: @about_us_section.awards_text
    fill_in "Happy clients class", with: @about_us_section.happy_clients_class
    fill_in "Happy clients counter", with: @about_us_section.happy_clients_counter
    fill_in "Happy clients text", with: @about_us_section.happy_clients_text
    fill_in "Left side", with: @about_us_section.left_side
    fill_in "Projects class", with: @about_us_section.projects_class
    fill_in "Projects counter", with: @about_us_section.projects_counter
    fill_in "Projects text", with: @about_us_section.projects_text
    fill_in "Right side", with: @about_us_section.right_side
    fill_in "Section", with: @about_us_section.section_id
    fill_in "Years class", with: @about_us_section.years_class
    fill_in "Years counter", with: @about_us_section.years_counter
    fill_in "Years text", with: @about_us_section.years_text
    click_on "Create About us section"

    assert_text "About us section was successfully created"
    click_on "Back"
  end

  test "updating a About us section" do
    visit about_us_sections_url
    click_on "Edit", match: :first

    fill_in "Awards class", with: @about_us_section.awards_class
    fill_in "Awards counter", with: @about_us_section.awards_counter
    fill_in "Awards text", with: @about_us_section.awards_text
    fill_in "Happy clients class", with: @about_us_section.happy_clients_class
    fill_in "Happy clients counter", with: @about_us_section.happy_clients_counter
    fill_in "Happy clients text", with: @about_us_section.happy_clients_text
    fill_in "Left side", with: @about_us_section.left_side
    fill_in "Projects class", with: @about_us_section.projects_class
    fill_in "Projects counter", with: @about_us_section.projects_counter
    fill_in "Projects text", with: @about_us_section.projects_text
    fill_in "Right side", with: @about_us_section.right_side
    fill_in "Section", with: @about_us_section.section_id
    fill_in "Years class", with: @about_us_section.years_class
    fill_in "Years counter", with: @about_us_section.years_counter
    fill_in "Years text", with: @about_us_section.years_text
    click_on "Update About us section"

    assert_text "About us section was successfully updated"
    click_on "Back"
  end

  test "destroying a About us section" do
    visit about_us_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "About us section was successfully destroyed"
  end
end
