# == Schema Information
#
# Table name: about_us_sections
#
#  id                    :bigint           not null, primary key
#  section_id            :bigint
#  left_side             :text
#  right_side            :text
#  happy_clients_counter :integer
#  projects_counter      :integer
#  years_counter         :integer
#  awards_counter        :integer
#  happy_clients_text    :string
#  projects_text         :string
#  years_text            :string
#  awards_text           :string
#  happy_clients_class   :string
#  projects_class        :string
#  years_class           :string
#  awards_class          :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class AboutUsSection < ApplicationRecord
  belongs_to :section
end
