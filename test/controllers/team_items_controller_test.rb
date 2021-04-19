require 'test_helper'

class TeamItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_item = team_items(:one)
  end

  test "should get index" do
    get team_items_url
    assert_response :success
  end

  test "should get new" do
    get new_team_item_url
    assert_response :success
  end

  test "should create team_item" do
    assert_difference('TeamItem.count') do
      post team_items_url, params: { team_item: { facebook_url: @team_item.facebook_url, instagram_url: @team_item.instagram_url, linkedin_url: @team_item.linkedin_url, name: @team_item.name, occupation: @team_item.occupation, position: @team_item.position, team_section_id: @team_item.team_section_id, twitter_url: @team_item.twitter_url } }
    end

    assert_redirected_to team_item_url(TeamItem.last)
  end

  test "should show team_item" do
    get team_item_url(@team_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_item_url(@team_item)
    assert_response :success
  end

  test "should update team_item" do
    patch team_item_url(@team_item), params: { team_item: { facebook_url: @team_item.facebook_url, instagram_url: @team_item.instagram_url, linkedin_url: @team_item.linkedin_url, name: @team_item.name, occupation: @team_item.occupation, position: @team_item.position, team_section_id: @team_item.team_section_id, twitter_url: @team_item.twitter_url } }
    assert_redirected_to team_item_url(@team_item)
  end

  test "should destroy team_item" do
    assert_difference('TeamItem.count', -1) do
      delete team_item_url(@team_item)
    end

    assert_redirected_to team_items_url
  end
end
