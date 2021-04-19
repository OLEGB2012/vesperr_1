require "application_system_test_case"

class FaqItemsTest < ApplicationSystemTestCase
  setup do
    @faq_item = faq_items(:one)
  end

  test "visiting the index" do
    visit faq_items_url
    assert_selector "h1", text: "Faq Items"
  end

  test "creating a Faq item" do
    visit faq_items_url
    click_on "New Faq Item"

    fill_in "Answer", with: @faq_item.answer
    fill_in "Faq section", with: @faq_item.faq_section_id
    fill_in "Position", with: @faq_item.position
    fill_in "Question", with: @faq_item.question
    click_on "Create Faq item"

    assert_text "Faq item was successfully created"
    click_on "Back"
  end

  test "updating a Faq item" do
    visit faq_items_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @faq_item.answer
    fill_in "Faq section", with: @faq_item.faq_section_id
    fill_in "Position", with: @faq_item.position
    fill_in "Question", with: @faq_item.question
    click_on "Update Faq item"

    assert_text "Faq item was successfully updated"
    click_on "Back"
  end

  test "destroying a Faq item" do
    visit faq_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faq item was successfully destroyed"
  end
end
