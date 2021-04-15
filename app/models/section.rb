class Section < ApplicationRecord
  belongs_to :setting
  has_many :clients, dependent: :destroy
  has_one :about_us_section, dependent: :destroy
  has_one :service_section, dependent: :destroy
end
