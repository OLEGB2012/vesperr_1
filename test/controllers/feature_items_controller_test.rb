require 'test_helper'

class FeatureItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feature_item = feature_items(:one)
  end

  test "should get index" do
    get feature_items_url
    assert_response :success
  end

  test "should get new" do
    get new_feature_item_url
    assert_response :success
  end

  test "should create feature_item" do
    assert_difference('FeatureItem.count') do
      post feature_items_url, params: { feature_item: { feature_section_id: @feature_item.feature_section_id, header: @feature_item.header, icon_class: @feature_item.icon_class, position: @feature_item.position, style_color: @feature_item.style_color } }
    end

    assert_redirected_to feature_item_url(FeatureItem.last)
  end

  test "should show feature_item" do
    get feature_item_url(@feature_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_feature_item_url(@feature_item)
    assert_response :success
  end

  test "should update feature_item" do
    patch feature_item_url(@feature_item), params: { feature_item: { feature_section_id: @feature_item.feature_section_id, header: @feature_item.header, icon_class: @feature_item.icon_class, position: @feature_item.position, style_color: @feature_item.style_color } }
    assert_redirected_to feature_item_url(@feature_item)
  end

  test "should destroy feature_item" do
    assert_difference('FeatureItem.count', -1) do
      delete feature_item_url(@feature_item)
    end

    assert_redirected_to feature_items_url
  end
end
