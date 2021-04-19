require 'test_helper'

class PortfolioCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio_category = portfolio_categories(:one)
  end

  test "should get index" do
    get portfolio_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_category_url
    assert_response :success
  end

  test "should create portfolio_category" do
    assert_difference('PortfolioCategory.count') do
      post portfolio_categories_url, params: { portfolio_category: { name: @portfolio_category.name } }
    end

    assert_redirected_to portfolio_category_url(PortfolioCategory.last)
  end

  test "should show portfolio_category" do
    get portfolio_category_url(@portfolio_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_category_url(@portfolio_category)
    assert_response :success
  end

  test "should update portfolio_category" do
    patch portfolio_category_url(@portfolio_category), params: { portfolio_category: { name: @portfolio_category.name } }
    assert_redirected_to portfolio_category_url(@portfolio_category)
  end

  test "should destroy portfolio_category" do
    assert_difference('PortfolioCategory.count', -1) do
      delete portfolio_category_url(@portfolio_category)
    end

    assert_redirected_to portfolio_categories_url
  end
end
