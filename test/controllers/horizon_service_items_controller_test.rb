require 'test_helper'

class HorizonServiceItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horizon_service_item = horizon_service_items(:one)
  end

  test "should get index" do
    get horizon_service_items_url
    assert_response :success
  end

  test "should get new" do
    get new_horizon_service_item_url
    assert_response :success
  end

  test "should create horizon_service_item" do
    assert_difference('HorizonServiceItem.count') do
      post horizon_service_items_url, params: { horizon_service_item: { active: @horizon_service_item.active, description: @horizon_service_item.description, header: @horizon_service_item.header, icon_class: @horizon_service_item.icon_class, position: @horizon_service_item.position, service_section_id: @horizon_service_item.service_section_id } }
    end

    assert_redirected_to horizon_service_item_url(HorizonServiceItem.last)
  end

  test "should show horizon_service_item" do
    get horizon_service_item_url(@horizon_service_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_horizon_service_item_url(@horizon_service_item)
    assert_response :success
  end

  test "should update horizon_service_item" do
    patch horizon_service_item_url(@horizon_service_item), params: { horizon_service_item: { active: @horizon_service_item.active, description: @horizon_service_item.description, header: @horizon_service_item.header, icon_class: @horizon_service_item.icon_class, position: @horizon_service_item.position, service_section_id: @horizon_service_item.service_section_id } }
    assert_redirected_to horizon_service_item_url(@horizon_service_item)
  end

  test "should destroy horizon_service_item" do
    assert_difference('HorizonServiceItem.count', -1) do
      delete horizon_service_item_url(@horizon_service_item)
    end

    assert_redirected_to horizon_service_items_url
  end
end
