require 'test_helper'

class PricingSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricing_section = pricing_sections(:one)
  end

  test "should get index" do
    get pricing_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_pricing_section_url
    assert_response :success
  end

  test "should create pricing_section" do
    assert_difference('PricingSection.count') do
      post pricing_sections_url, params: { pricing_section: { description: @pricing_section.description, section_id: @pricing_section.section_id } }
    end

    assert_redirected_to pricing_section_url(PricingSection.last)
  end

  test "should show pricing_section" do
    get pricing_section_url(@pricing_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricing_section_url(@pricing_section)
    assert_response :success
  end

  test "should update pricing_section" do
    patch pricing_section_url(@pricing_section), params: { pricing_section: { description: @pricing_section.description, section_id: @pricing_section.section_id } }
    assert_redirected_to pricing_section_url(@pricing_section)
  end

  test "should destroy pricing_section" do
    assert_difference('PricingSection.count', -1) do
      delete pricing_section_url(@pricing_section)
    end

    assert_redirected_to pricing_sections_url
  end
end
