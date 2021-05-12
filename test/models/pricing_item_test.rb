# == Schema Information
#
# Table name: pricing_items
#
#  id                 :bigint           not null, primary key
#  pricing_section_id :bigint
#  position           :integer
#  name               :string
#  price              :decimal(10, 2)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PricingItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
