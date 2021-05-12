# == Schema Information
#
# Table name: faq_items
#
#  id             :bigint           not null, primary key
#  faq_section_id :bigint
#  position       :integer
#  question       :string
#  answer         :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class FaqItem < ApplicationRecord
  belongs_to :faq_section
  scope :ordered, -> {order(:position)}
end
