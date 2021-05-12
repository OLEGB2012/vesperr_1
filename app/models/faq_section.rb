# == Schema Information
#
# Table name: faq_sections
#
#  id          :bigint           not null, primary key
#  section_id  :bigint
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FaqSection < ApplicationRecord
  belongs_to :section
  has_many :faq_items, dependent: :destroy
end
