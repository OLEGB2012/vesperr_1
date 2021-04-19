require "application_system_test_case"

class TeamItemsTest < ApplicationSystemTestCase
  setup do
    @team_item = team_items(:one)
  end

  test "visiting the index" do
    visit team_items_url
    assert_selector "h1", text: "Team Items"
  end

  test "creating a Team item" do
    visit team_items_url
    click_on "New Team Item"

    fill_in "Facebook url", with: @team_item.facebook_url
    fill_in "Instagram url", with: @team_item.instagram_url
    fill_in "Linkedin url", with: @team_item.linkedin_url
    fill_in "Name", with: @team_item.name
    fill_in "Occupation", with: @team_item.occupation
    fill_in "Position", with: @team_item.position
    fill_in "Team section", with: @team_item.team_section_id
    fill_in "Twitter url", with: @team_item.twitter_url
    click_on "Create Team item"

    assert_text "Team item was successfully created"
    click_on "Back"
  end

  test "updating a Team item" do
    visit team_items_url
    click_on "Edit", match: :first

    fill_in "Facebook url", with: @team_item.facebook_url
    fill_in "Instagram url", with: @team_item.instagram_url
    fill_in "Linkedin url", with: @team_item.linkedin_url
    fill_in "Name", with: @team_item.name
    fill_in "Occupation", with: @team_item.occupation
    fill_in "Position", with: @team_item.position
    fill_in "Team section", with: @team_item.team_section_id
    fill_in "Twitter url", with: @team_item.twitter_url
    click_on "Update Team item"

    assert_text "Team item was successfully updated"
    click_on "Back"
  end

  test "destroying a Team item" do
    visit team_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team item was successfully destroyed"
  end
end
