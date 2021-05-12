# == Schema Information
#
# Table name: feature_items
#
#  id                 :bigint           not null, primary key
#  feature_section_id :bigint
#  position           :integer
#  header             :string
#  icon_class         :string
#  style_color        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class FeatureItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
