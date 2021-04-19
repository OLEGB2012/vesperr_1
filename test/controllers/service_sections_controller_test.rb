require 'test_helper'

class ServiceSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_section = service_sections(:one)
  end

  test "should get index" do
    get service_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_service_section_url
    assert_response :success
  end

  test "should create service_section" do
    assert_difference('ServiceSection.count') do
      post service_sections_url, params: { service_section: { description: @service_section.description, section_id: @service_section.section_id } }
    end

    assert_redirected_to service_section_url(ServiceSection.last)
  end

  test "should show service_section" do
    get service_section_url(@service_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_section_url(@service_section)
    assert_response :success
  end

  test "should update service_section" do
    patch service_section_url(@service_section), params: { service_section: { description: @service_section.description, section_id: @service_section.section_id } }
    assert_redirected_to service_section_url(@service_section)
  end

  test "should destroy service_section" do
    assert_difference('ServiceSection.count', -1) do
      delete service_section_url(@service_section)
    end

    assert_redirected_to service_sections_url
  end
end
