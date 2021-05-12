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

require 'test_helper'

class FaqItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
