require 'test_helper'

class PricingItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricing_item = pricing_items(:one)
  end

  test "should get index" do
    get pricing_items_url
    assert_response :success
  end

  test "should get new" do
    get new_pricing_item_url
    assert_response :success
  end

  test "should create pricing_item" do
    assert_difference('PricingItem.count') do
      post pricing_items_url, params: { pricing_item: { name: @pricing_item.name, position: @pricing_item.position, price: @pricing_item.price, pricing_section_id: @pricing_item.pricing_section_id } }
    end

    assert_redirected_to pricing_item_url(PricingItem.last)
  end

  test "should show pricing_item" do
    get pricing_item_url(@pricing_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricing_item_url(@pricing_item)
    assert_response :success
  end

  test "should update pricing_item" do
    patch pricing_item_url(@pricing_item), params: { pricing_item: { name: @pricing_item.name, position: @pricing_item.position, price: @pricing_item.price, pricing_section_id: @pricing_item.pricing_section_id } }
    assert_redirected_to pricing_item_url(@pricing_item)
  end

  test "should destroy pricing_item" do
    assert_difference('PricingItem.count', -1) do
      delete pricing_item_url(@pricing_item)
    end

    assert_redirected_to pricing_items_url
  end
end
