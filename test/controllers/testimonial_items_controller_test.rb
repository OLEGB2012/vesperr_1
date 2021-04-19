require 'test_helper'

class TestimonialItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonial_item = testimonial_items(:one)
  end

  test "should get index" do
    get testimonial_items_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonial_item_url
    assert_response :success
  end

  test "should create testimonial_item" do
    assert_difference('TestimonialItem.count') do
      post testimonial_items_url, params: { testimonial_item: { author: @testimonial_item.author, content: @testimonial_item.content, occupation: @testimonial_item.occupation, position: @testimonial_item.position, testimonial_section_id: @testimonial_item.testimonial_section_id } }
    end

    assert_redirected_to testimonial_item_url(TestimonialItem.last)
  end

  test "should show testimonial_item" do
    get testimonial_item_url(@testimonial_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonial_item_url(@testimonial_item)
    assert_response :success
  end

  test "should update testimonial_item" do
    patch testimonial_item_url(@testimonial_item), params: { testimonial_item: { author: @testimonial_item.author, content: @testimonial_item.content, occupation: @testimonial_item.occupation, position: @testimonial_item.position, testimonial_section_id: @testimonial_item.testimonial_section_id } }
    assert_redirected_to testimonial_item_url(@testimonial_item)
  end

  test "should destroy testimonial_item" do
    assert_difference('TestimonialItem.count', -1) do
      delete testimonial_item_url(@testimonial_item)
    end

    assert_redirected_to testimonial_items_url
  end
end
