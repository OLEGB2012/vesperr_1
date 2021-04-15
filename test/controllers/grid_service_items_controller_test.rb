require 'test_helper'

class GridServiceItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grid_service_item = grid_service_items(:one)
  end

  test "should get index" do
    get grid_service_items_url
    assert_response :success
  end

  test "should get new" do
    get new_grid_service_item_url
    assert_response :success
  end

  test "should create grid_service_item" do
    assert_difference('GridServiceItem.count') do
      post grid_service_items_url, params: { grid_service_item: { active: @grid_service_item.active, description: @grid_service_item.description, header: @grid_service_item.header, position: @grid_service_item.position, service_section_id: @grid_service_item.service_section_id } }
    end

    assert_redirected_to grid_service_item_url(GridServiceItem.last)
  end

  test "should show grid_service_item" do
    get grid_service_item_url(@grid_service_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_grid_service_item_url(@grid_service_item)
    assert_response :success
  end

  test "should update grid_service_item" do
    patch grid_service_item_url(@grid_service_item), params: { grid_service_item: { active: @grid_service_item.active, description: @grid_service_item.description, header: @grid_service_item.header, position: @grid_service_item.position, service_section_id: @grid_service_item.service_section_id } }
    assert_redirected_to grid_service_item_url(@grid_service_item)
  end

  test "should destroy grid_service_item" do
    assert_difference('GridServiceItem.count', -1) do
      delete grid_service_item_url(@grid_service_item)
    end

    assert_redirected_to grid_service_items_url
  end
end
