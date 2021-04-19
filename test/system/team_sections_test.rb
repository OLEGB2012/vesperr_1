require "application_system_test_case"

class TeamSectionsTest < ApplicationSystemTestCase
  setup do
    @team_section = team_sections(:one)
  end

  test "visiting the index" do
    visit team_sections_url
    assert_selector "h1", text: "Team Sections"
  end

  test "creating a Team section" do
    visit team_sections_url
    click_on "New Team Section"

    fill_in "Description", with: @team_section.description
    fill_in "Section", with: @team_section.section_id
    click_on "Create Team section"

    assert_text "Team section was successfully created"
    click_on "Back"
  end

  test "updating a Team section" do
    visit team_sections_url
    click_on "Edit", match: :first

    fill_in "Description", with: @team_section.description
    fill_in "Section", with: @team_section.section_id
    click_on "Update Team section"

    assert_text "Team section was successfully updated"
    click_on "Back"
  end

  test "destroying a Team section" do
    visit team_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team section was successfully destroyed"
  end
end
