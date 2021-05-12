# == Schema Information
#
# Table name: pricing_items
#
#  id                 :bigint           not null, primary key
#  pricing_section_id :bigint
#  position           :integer
#  name               :string
#  price              :decimal(10, 2)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class PricingItem < ApplicationRecord
  belongs_to :pricing_section
  has_many :pricing_capabilities, dependent: :destroy
  scope :ordered, -> {order(:position)}
end
