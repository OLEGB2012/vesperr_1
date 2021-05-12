# == Schema Information
#
# Table name: clients
#
#  id         :bigint           not null, primary key
#  section_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
  belongs_to :section
end
