# == Schema Information
#
# Table name: portfolio_categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PortfolioCategory < ApplicationRecord
  has_many :portfolio_items, dependent: :restrict_with_error
end
