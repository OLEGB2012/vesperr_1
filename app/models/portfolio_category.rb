class PortfolioCategory < ApplicationRecord
  has_many :portfolio_items, dependent: :restrict_with_error
end
