class PricingCapability < ApplicationRecord
  belongs_to :pricing_item
  belongs_to :capability
end
