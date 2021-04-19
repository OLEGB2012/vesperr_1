class Capability < ApplicationRecord
  has_many :pricing_capabilities, dependent: :restrict_with_error
end
