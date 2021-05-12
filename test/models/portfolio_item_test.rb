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

require 'test_helper'

class PortfolioItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
