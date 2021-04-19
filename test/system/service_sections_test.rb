require "application_system_test_case"

class ServiceSectionsTest < ApplicationSystemTestCase
  setup do
    @service_section = service_sections(:one)
  end

  test "visiting the index" do
    visit service_sections_url
    assert_selector "h1", text: "Service Sections"
  end

  test "creating a Service section" do
    visit service_sections_url
    click_on "New Service Section"

    fill_in "Description", with: @service_section.description
    fill_in "Section", with: @service_section.section_id
    click_on "Create Service section"

    assert_text "Service section was successfully created"
    click_on "Back"
  end

  test "updating a Service section" do
    visit service_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @service_section.description
    fill_in "Section", with: @service_section.section_id
    click_on "Update Service section"

    assert_text "Service section was successfully updated"
    click_on "Back"
  end

  test "destroying a Service section" do
    visit service_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service section was successfully destroyed"
  end
end
