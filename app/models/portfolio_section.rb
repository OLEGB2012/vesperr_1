# == Schema Information
#
# Table name: portfolio_sections
#
#  id          :bigint           not null, primary key
#  section_id  :bigint
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PortfolioSection < ApplicationRecord
  belongs_to :section
  has_many :portfolio_items, dependent: :destroy
end
