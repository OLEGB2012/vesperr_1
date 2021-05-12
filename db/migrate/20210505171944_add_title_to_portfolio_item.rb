class AddTitleToPortfolioItem < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolio_items, :title, :string
  end
end
