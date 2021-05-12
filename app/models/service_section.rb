# == Schema Information
#
# Table name: service_sections
#
#  id          :bigint           not null, primary key
#  section_id  :bigint
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ServiceSection < ApplicationRecord
  belongs_to :section
  has_many :horizon_service_items, dependent: :destroy
  has_many :grid_service_items, dependent: :destroy
end
