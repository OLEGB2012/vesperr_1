class PortfolioItem < ApplicationRecord
  belongs_to :portfolio_section
  belongs_to :portfolio_category
end
