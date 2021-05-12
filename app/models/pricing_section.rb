# == Schema Information
#
# Table name: pricing_sections
#
#  id          :bigint           not null, primary key
#  section_id  :bigint
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PricingSection < ApplicationRecord
  belongs_to :section
  has_many :pricing_items, dependent: :destroy
end
