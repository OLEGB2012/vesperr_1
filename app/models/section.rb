class Section < ApplicationRecord
  belongs_to :setting
  has_many :clients, dependent: :destroy
  has_one :about_us_section, dependent: :destroy
  has_one :service_section, dependent: :destroy
  has_one :feature_section, dependent: :destroy
  has_one :testimonial_section, dependent: :destroy
  has_one :portfolio_section, dependent: :destroy
  has_one :team_section, dependent: :destroy
  has_one :pricing_section, dependent: :destroy
  has_one :faq_section, dependent: :destroy
end
