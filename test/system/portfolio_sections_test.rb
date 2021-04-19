require "application_system_test_case"

class PortfolioSectionsTest < ApplicationSystemTestCase
  setup do
    @portfolio_section = portfolio_sections(:one)
  end

  test "visiting the index" do
    visit portfolio_sections_url
    assert_selector "h1", text: "Portfolio Sections"
  end

  test "creating a Portfolio section" do
    visit portfolio_sections_url
    click_on "New Portfolio Section"

    fill_in "Description", with: @portfolio_section.description
    fill_in "Section", with: @portfolio_section.section_id
    click_on "Create Portfolio section"

    assert_text "Portfolio section was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio section" do
    visit portfolio_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @portfolio_section.description
    fill_in "Section", with: @portfolio_section.section_id
    click_on "Update Portfolio section"

    assert_text "Portfolio section was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio section" do
    visit portfolio_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio section was successfully destroyed"
  end
end
