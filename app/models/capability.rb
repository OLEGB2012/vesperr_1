# == Schema Information
#
# Table name: capabilities
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Capability < ApplicationRecord
  has_many :pricing_capabilities, dependent: :restrict_with_error
end
