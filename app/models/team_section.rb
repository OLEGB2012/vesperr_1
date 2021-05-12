# == Schema Information
#
# Table name: team_sections
#
#  id          :bigint           not null, primary key
#  section_id  :bigint
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeamSection < ApplicationRecord
  belongs_to :section
  has_many :team_items, dependent: :destroy
end
