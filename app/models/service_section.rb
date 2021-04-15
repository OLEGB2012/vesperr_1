class ServiceSection < ApplicationRecord
  belongs_to :section
  has_many :horizon_service_items, dependent: :destroy
  has_many :grid_service_items, dependent: :destroy
end
