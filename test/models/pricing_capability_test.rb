# == Schema Information
#
# Table name: pricing_capabilities
#
#  id              :bigint           not null, primary key
#  pricing_item_id :bigint
#  position        :integer
#  capability_id   :bigint
#  status          :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PricingCapabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
