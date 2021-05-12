# == Schema Information
#
# Table name: sections
#
#  id           :bigint           not null, primary key
#  setting_id   :bigint
#  position     :integer
#  name         :string
#  active       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  partial_name :string
#

require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
