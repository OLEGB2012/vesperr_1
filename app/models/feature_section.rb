# == Schema Information
#
# Table name: feature_sections
#
#  id          :bigint           not null, primary key
#  section_id  :bigint
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FeatureSection < ApplicationRecord
  belongs_to :section
  has_many :feature_items, dependent: :destroy
end
