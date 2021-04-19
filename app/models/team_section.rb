class TeamSection < ApplicationRecord
  belongs_to :section
  has_many :team_items, dependent: :destroy
end
