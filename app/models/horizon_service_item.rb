# == Schema Information
#
# Table name: horizon_service_items
#
#  id                 :bigint           not null, primary key
#  service_section_id :bigint
#  position           :integer
#  header             :string
#  description        :string
#  icon_class         :string
#  active             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class HorizonServiceItem < ApplicationRecord
  belongs_to :service_section
  scope :active, -> {where('active = ?', true).order(:position)}
end
