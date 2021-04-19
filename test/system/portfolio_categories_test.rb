require "application_system_test_case"

class PortfolioCategoriesTest < ApplicationSystemTestCase
  setup do
    @portfolio_category = portfolio_categories(:one)
  end

  test "visiting the index" do
    visit portfolio_categories_url
    assert_selector "h1", text: "Portfolio Categories"
  end

  test "creating a Portfolio category" do
    visit portfolio_categories_url
    click_on "New Portfolio Category"

    fill_in "Name", with: @portfolio_category.name
    click_on "Create Portfolio category"

    assert_text "Portfolio category was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio category" do
    visit portfolio_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @portfolio_category.name
    click_on "Update Portfolio category"

    assert_text "Portfolio category was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio category" do
    visit portfolio_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio category was successfully destroyed"
  end
end
