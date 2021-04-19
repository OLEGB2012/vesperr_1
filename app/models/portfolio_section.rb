class PortfolioSection < ApplicationRecord
  belongs_to :section
  has_many :portfolio_items, dependent: :destroy
end
