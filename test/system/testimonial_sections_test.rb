require "application_system_test_case"

class TestimonialSectionsTest < ApplicationSystemTestCase
  setup do
    @testimonial_section = testimonial_sections(:one)
  end

  test "visiting the index" do
    visit testimonial_sections_url
    assert_selector "h1", text: "Testimonial Sections"
  end

  test "creating a Testimonial section" do
    visit testimonial_sections_url
    click_on "New Testimonial Section"

    fill_in "Description", with: @testimonial_section.description
    fill_in "Section", with: @testimonial_section.section_id
    click_on "Create Testimonial section"

    assert_text "Testimonial section was successfully created"
    click_on "Back"
  end

  test "updating a Testimonial section" do
    visit testimonial_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @testimonial_section.description
    fill_in "Section", with: @testimonial_section.section_id
    click_on "Update Testimonial section"

    assert_text "Testimonial section was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonial section" do
    visit testimonial_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonial section was successfully destroyed"
  end
end
