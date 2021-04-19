class FaqSection < ApplicationRecord
  belongs_to :section
  has_many :faq_items, dependent: :destroy
end
