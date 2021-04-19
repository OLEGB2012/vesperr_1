require 'test_helper'

class TestimonialSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonial_section = testimonial_sections(:one)
  end

  test "should get index" do
    get testimonial_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonial_section_url
    assert_response :success
  end

  test "should create testimonial_section" do
    assert_difference('TestimonialSection.count') do
      post testimonial_sections_url, params: { testimonial_section: { description: @testimonial_section.description, section_id: @testimonial_section.section_id } }
    end

    assert_redirected_to testimonial_section_url(TestimonialSection.last)
  end

  test "should show testimonial_section" do
    get testimonial_section_url(@testimonial_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonial_section_url(@testimonial_section)
    assert_response :success
  end

  test "should update testimonial_section" do
    patch testimonial_section_url(@testimonial_section), params: { testimonial_section: { description: @testimonial_section.description, section_id: @testimonial_section.section_id } }
    assert_redirected_to testimonial_section_url(@testimonial_section)
  end

  test "should destroy testimonial_section" do
    assert_difference('TestimonialSection.count', -1) do
      delete testimonial_section_url(@testimonial_section)
    end

    assert_redirected_to testimonial_sections_url
  end
end
