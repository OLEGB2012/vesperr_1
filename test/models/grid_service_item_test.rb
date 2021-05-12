# == Schema Information
#
# Table name: grid_service_items
#
#  id                 :bigint           not null, primary key
#  service_section_id :bigint
#  position           :integer
#  header             :string
#  description        :string
#  active             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class GridServiceItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
