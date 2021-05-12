# == Schema Information
#
# Table name: testimonial_items
#
#  id                     :bigint           not null, primary key
#  testimonial_section_id :bigint
#  position               :integer
#  author                 :string
#  occupation             :string
#  content                :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class TestimonialItem < ApplicationRecord
  belongs_to :testimonial_section
  scope :ordered, -> {order(:position)}
end
