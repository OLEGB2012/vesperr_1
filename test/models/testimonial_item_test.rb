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

require 'test_helper'

class TestimonialItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
