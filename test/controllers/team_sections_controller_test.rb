require 'test_helper'

class TeamSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_section = team_sections(:one)
  end

  test "should get index" do
    get team_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_team_section_url
    assert_response :success
  end

  test "should create team_section" do
    assert_difference('TeamSection.count') do
      post team_sections_url, params: { team_section: { description: @team_section.description, section_id: @team_section.section_id } }
    end

    assert_redirected_to team_section_url(TeamSection.last)
  end

  test "should show team_section" do
    get team_section_url(@team_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_section_url(@team_section)
    assert_response :success
  end

  test "should update team_section" do
    patch team_section_url(@team_section), params: { team_section: { description: @team_section.description, section_id: @team_section.section_id } }
    assert_redirected_to team_section_url(@team_section)
  end

  test "should destroy team_section" do
    assert_difference('TeamSection.count', -1) do
      delete team_section_url(@team_section)
    end

    assert_redirected_to team_sections_url
  end
end
