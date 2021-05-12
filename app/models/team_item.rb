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

class TeamItem < ApplicationRecord
  belongs_to :team_section
  scope :ordered, -> {order(:position)}
end
