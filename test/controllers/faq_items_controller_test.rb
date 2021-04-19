require 'test_helper'

class FaqItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faq_item = faq_items(:one)
  end

  test "should get index" do
    get faq_items_url
    assert_response :success
  end

  test "should get new" do
    get new_faq_item_url
    assert_response :success
  end

  test "should create faq_item" do
    assert_difference('FaqItem.count') do
      post faq_items_url, params: { faq_item: { answer: @faq_item.answer, faq_section_id: @faq_item.faq_section_id, position: @faq_item.position, question: @faq_item.question } }
    end

    assert_redirected_to faq_item_url(FaqItem.last)
  end

  test "should show faq_item" do
    get faq_item_url(@faq_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_faq_item_url(@faq_item)
    assert_response :success
  end

  test "should update faq_item" do
    patch faq_item_url(@faq_item), params: { faq_item: { answer: @faq_item.answer, faq_section_id: @faq_item.faq_section_id, position: @faq_item.position, question: @faq_item.question } }
    assert_redirected_to faq_item_url(@faq_item)
  end

  test "should destroy faq_item" do
    assert_difference('FaqItem.count', -1) do
      delete faq_item_url(@faq_item)
    end

    assert_redirected_to faq_items_url
  end
end
