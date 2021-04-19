require "application_system_test_case"

class TestimonialItemsTest < ApplicationSystemTestCase
  setup do
    @testimonial_item = testimonial_items(:one)
  end

  test "visiting the index" do
    visit testimonial_items_url
    assert_selector "h1", text: "Testimonial Items"
  end

  test "creating a Testimonial item" do
    visit testimonial_items_url
    click_on "New Testimonial Item"

    fill_in "Author", with: @testimonial_item.author
    fill_in "Content", with: @testimonial_item.content
    fill_in "Occupation", with: @testimonial_item.occupation
    fill_in "Position", with: @testimonial_item.position
    fill_in "Testimonial section", with: @testimonial_item.testimonial_section_id
    click_on "Create Testimonial item"

    assert_text "Testimonial item was successfully created"
    click_on "Back"
  end

  test "updating a Testimonial item" do
    visit testimonial_items_url
    click_on "Edit", match: :first

    fill_in "Author", with: @testimonial_item.author
    fill_in "Content", with: @testimonial_item.content
    fill_in "Occupation", with: @testimonial_item.occupation
    fill_in "Position", with: @testimonial_item.position
    fill_in "Testimonial section", with: @testimonial_item.testimonial_section_id
    click_on "Update Testimonial item"

    assert_text "Testimonial item was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonial item" do
    visit testimonial_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonial item was successfully destroyed"
  end
end
