class PricingSection < ApplicationRecord
  belongs_to :section
  has_many :pricing_items, dependent: :destroy
end
