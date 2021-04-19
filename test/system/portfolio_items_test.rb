require "application_system_test_case"

class PortfolioItemsTest < ApplicationSystemTestCase
  setup do
    @portfolio_item = portfolio_items(:one)
  end

  test "visiting the index" do
    visit portfolio_items_url
    assert_selector "h1", text: "Portfolio Items"
  end

  test "creating a Portfolio item" do
    visit portfolio_items_url
    click_on "New Portfolio Item"

    fill_in "Client name", with: @portfolio_item.client_name
    fill_in "Description", with: @portfolio_item.description
    fill_in "Portfolio category", with: @portfolio_item.portfolio_category_id
    fill_in "Portfolio section", with: @portfolio_item.portfolio_section_id
    fill_in "Position", with: @portfolio_item.position
    fill_in "Project date", with: @portfolio_item.project_date
    fill_in "Project url", with: @portfolio_item.project_url
    click_on "Create Portfolio item"

    assert_text "Portfolio item was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio item" do
    visit portfolio_items_url
    click_on "Edit", match: :first

    fill_in "Client name", with: @portfolio_item.client_name
    fill_in "Description", with: @portfolio_item.description
    fill_in "Portfolio category", with: @portfolio_item.portfolio_category_id
    fill_in "Portfolio section", with: @portfolio_item.portfolio_section_id
    fill_in "Position", with: @portfolio_item.position
    fill_in "Project date", with: @portfolio_item.project_date
    fill_in "Project url", with: @portfolio_item.project_url
    click_on "Update Portfolio item"

    assert_text "Portfolio item was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio item" do
    visit portfolio_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio item was successfully destroyed"
  end
end
