# == Schema Information
#
# Table name: portfolio_items
#
#  id                    :bigint           not null, primary key
#  portfolio_section_id  :bigint
#  position              :integer
#  portfolio_category_id :bigint
#  client_name           :string
#  project_date          :date
#  project_url           :string
#  description           :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  title                 :string
#

class PortfolioItem < ApplicationRecord
  belongs_to :portfolio_section
  belongs_to :portfolio_category
  scope :ordered, -> {order(:position)}
end
