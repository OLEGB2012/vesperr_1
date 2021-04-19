class FeatureSection < ApplicationRecord
  belongs_to :section
  has_many :feature_items, dependent: :destroy
end
