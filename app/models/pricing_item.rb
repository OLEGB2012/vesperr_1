class PricingItem < ApplicationRecord
  belongs_to :pricing_section
  has_many :pricing_capabilities, dependent: :destroy
end
