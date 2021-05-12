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

class PricingCapability < ApplicationRecord
  belongs_to :pricing_item
  belongs_to :capability
end
