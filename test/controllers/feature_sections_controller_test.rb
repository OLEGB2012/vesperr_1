require 'test_helper'

class FeatureSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feature_section = feature_sections(:one)
  end

  test "should get index" do
    get feature_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_feature_section_url
    assert_response :success
  end

  test "should create feature_section" do
    assert_difference('FeatureSection.count') do
      post feature_sections_url, params: { feature_section: { description: @feature_section.description, section_id: @feature_section.section_id } }
    end

    assert_redirected_to feature_section_url(FeatureSection.last)
  end

  test "should show feature_section" do
    get feature_section_url(@feature_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_feature_section_url(@feature_section)
    assert_response :success
  end

  test "should update feature_section" do
    patch feature_section_url(@feature_section), params: { feature_section: { description: @feature_section.description, section_id: @feature_section.section_id } }
    assert_redirected_to feature_section_url(@feature_section)
  end

  test "should destroy feature_section" do
    assert_difference('FeatureSection.count', -1) do
      delete feature_section_url(@feature_section)
    end

    assert_redirected_to feature_sections_url
  end
end
