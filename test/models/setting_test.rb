# == Schema Information
#
# Table name: settings
#
#  id                :bigint           not null, primary key
#  name              :string
#  slogan_basic      :string
#  slogan_additional :string
#  get_started       :string
#  call_to_action    :string
#  address           :string
#  email             :string
#  phone             :string
#  twitter_url       :string
#  facebook_url      :string
#  instagram_url     :string
#  linkedin_url      :string
#  privacy_policy    :text
#  terms_of_use      :text
#  active            :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class SettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
