require 'test_helper'

class FaqSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faq_section = faq_sections(:one)
  end

  test "should get index" do
    get faq_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_faq_section_url
    assert_response :success
  end

  test "should create faq_section" do
    assert_difference('FaqSection.count') do
      post faq_sections_url, params: { faq_section: { description: @faq_section.description, section_id: @faq_section.section_id } }
    end

    assert_redirected_to faq_section_url(FaqSection.last)
  end

  test "should show faq_section" do
    get faq_section_url(@faq_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_faq_section_url(@faq_section)
    assert_response :success
  end

  test "should update faq_section" do
    patch faq_section_url(@faq_section), params: { faq_section: { description: @faq_section.description, section_id: @faq_section.section_id } }
    assert_redirected_to faq_section_url(@faq_section)
  end

  test "should destroy faq_section" do
    assert_difference('FaqSection.count', -1) do
      delete faq_section_url(@faq_section)
    end

    assert_redirected_to faq_sections_url
  end
end
