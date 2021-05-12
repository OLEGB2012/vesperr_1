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

require 'test_helper'

class FaqSectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
