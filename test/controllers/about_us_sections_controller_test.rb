require 'test_helper'

class AboutUsSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_us_section = about_us_sections(:one)
  end

  test "should get index" do
    get about_us_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_about_us_section_url
    assert_response :success
  end

  test "should create about_us_section" do
    assert_difference('AboutUsSection.count') do
      post about_us_sections_url, params: { about_us_section: { awards_class: @about_us_section.awards_class, awards_counter: @about_us_section.awards_counter, awards_text: @about_us_section.awards_text, happy_clients_class: @about_us_section.happy_clients_class, happy_clients_counter: @about_us_section.happy_clients_counter, happy_clients_text: @about_us_section.happy_clients_text, left_side: @about_us_section.left_side, projects_class: @about_us_section.projects_class, projects_counter: @about_us_section.projects_counter, projects_text: @about_us_section.projects_text, right_side: @about_us_section.right_side, section_id: @about_us_section.section_id, years_class: @about_us_section.years_class, years_counter: @about_us_section.years_counter, years_text: @about_us_section.years_text } }
    end

    assert_redirected_to about_us_section_url(AboutUsSection.last)
  end

  test "should show about_us_section" do
    get about_us_section_url(@about_us_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_us_section_url(@about_us_section)
    assert_response :success
  end

  test "should update about_us_section" do
    patch about_us_section_url(@about_us_section), params: { about_us_section: { awards_class: @about_us_section.awards_class, awards_counter: @about_us_section.awards_counter, awards_text: @about_us_section.awards_text, happy_clients_class: @about_us_section.happy_clients_class, happy_clients_counter: @about_us_section.happy_clients_counter, happy_clients_text: @about_us_section.happy_clients_text, left_side: @about_us_section.left_side, projects_class: @about_us_section.projects_class, projects_counter: @about_us_section.projects_counter, projects_text: @about_us_section.projects_text, right_side: @about_us_section.right_side, section_id: @about_us_section.section_id, years_class: @about_us_section.years_class, years_counter: @about_us_section.years_counter, years_text: @about_us_section.years_text } }
    assert_redirected_to about_us_section_url(@about_us_section)
  end

  test "should destroy about_us_section" do
    assert_difference('AboutUsSection.count', -1) do
      delete about_us_section_url(@about_us_section)
    end

    assert_redirected_to about_us_sections_url
  end
end
