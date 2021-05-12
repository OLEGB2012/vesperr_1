# == Schema Information
#
# Table name: team_items
#
#  id              :bigint           not null, primary key
#  team_section_id :bigint
#  position        :integer
#  name            :string
#  occupation      :string
#  twitter_url     :string
#  facebook_url    :string
#  instagram_url   :string
#  linkedin_url    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class TeamItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
