require 'test_helper'

class PricingCapabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricing_capability = pricing_capabilities(:one)
  end

  test "should get index" do
    get pricing_capabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_pricing_capability_url
    assert_response :success
  end

  test "should create pricing_capability" do
    assert_difference('PricingCapability.count') do
      post pricing_capabilities_url, params: { pricing_capability: { capability_id: @pricing_capability.capability_id, position: @pricing_capability.position, pricing_item_id: @pricing_capability.pricing_item_id, status: @pricing_capability.status } }
    end

    assert_redirected_to pricing_capability_url(PricingCapability.last)
  end

  test "should show pricing_capability" do
    get pricing_capability_url(@pricing_capability)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricing_capability_url(@pricing_capability)
    assert_response :success
  end

  test "should update pricing_capability" do
    patch pricing_capability_url(@pricing_capability), params: { pricing_capability: { capability_id: @pricing_capability.capability_id, position: @pricing_capability.position, pricing_item_id: @pricing_capability.pricing_item_id, status: @pricing_capability.status } }
    assert_redirected_to pricing_capability_url(@pricing_capability)
  end

  test "should destroy pricing_capability" do
    assert_difference('PricingCapability.count', -1) do
      delete pricing_capability_url(@pricing_capability)
    end

    assert_redirected_to pricing_capabilities_url
  end
end
